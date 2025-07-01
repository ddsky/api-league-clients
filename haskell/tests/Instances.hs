{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import APILeague.Model
import APILeague.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary ArtSearchAPI200Response where
  arbitrary = sized genArtSearchAPI200Response

genArtSearchAPI200Response :: Int -> Gen ArtSearchAPI200Response
genArtSearchAPI200Response n =
  ArtSearchAPI200Response
    <$> arbitraryReducedMaybe n -- artSearchAPI200ResponseAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- artSearchAPI200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- artSearchAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- artSearchAPI200ResponseArtworks :: Maybe [SearchBooksAPI200ResponseBooksInnerInner]
  
instance Arbitrary ComputeNutritionAPI200Response where
  arbitrary = sized genComputeNutritionAPI200Response

genComputeNutritionAPI200Response :: Int -> Gen ComputeNutritionAPI200Response
genComputeNutritionAPI200Response n =
  ComputeNutritionAPI200Response
    <$> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseNutrients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseProperties :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseFlavonoids :: Maybe [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdown :: Maybe [ComputeNutritionAPI200ResponseIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseCaloricBreakdown :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseWeightPerServing :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
  
instance Arbitrary ComputeNutritionAPI200ResponseIngredientBreakdownInner where
  arbitrary = sized genComputeNutritionAPI200ResponseIngredientBreakdownInner

genComputeNutritionAPI200ResponseIngredientBreakdownInner :: Int -> Gen ComputeNutritionAPI200ResponseIngredientBreakdownInner
genComputeNutritionAPI200ResponseIngredientBreakdownInner n =
  ComputeNutritionAPI200ResponseIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerNutrients :: Maybe [ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner]
  
instance Arbitrary ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner where
  arbitrary = sized genComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner

genComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner :: Int -> Gen ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner
genComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner n =
  ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner
    <$> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInnerPercentOfDailyNeeds :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary ConvertUnitsAPI200Response where
  arbitrary = sized genConvertUnitsAPI200Response

genConvertUnitsAPI200Response :: Int -> Gen ConvertUnitsAPI200Response
genConvertUnitsAPI200Response n =
  ConvertUnitsAPI200Response
    <$> arbitraryReducedMaybe n -- convertUnitsAPI200ResponseTargetAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- convertUnitsAPI200ResponseTargetUnit :: Maybe Text
  
instance Arbitrary CorrectSpellingAPI200Response where
  arbitrary = sized genCorrectSpellingAPI200Response

genCorrectSpellingAPI200Response :: Int -> Gen CorrectSpellingAPI200Response
genCorrectSpellingAPI200Response n =
  CorrectSpellingAPI200Response
    <$> arbitraryReducedMaybe n -- correctSpellingAPI200ResponseCorrectedText :: Maybe Text
  
instance Arbitrary DetectGenderByNameAPI200Response where
  arbitrary = sized genDetectGenderByNameAPI200Response

genDetectGenderByNameAPI200Response :: Int -> Gen DetectGenderByNameAPI200Response
genDetectGenderByNameAPI200Response n =
  DetectGenderByNameAPI200Response
    <$> arbitraryReducedMaybe n -- detectGenderByNameAPI200ResponseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectGenderByNameAPI200ResponseProbabilityMale :: Maybe Double
    <*> arbitraryReducedMaybe n -- detectGenderByNameAPI200ResponseProbabilityFemale :: Maybe Double
    <*> arbitraryReducedMaybe n -- detectGenderByNameAPI200ResponsePopularity :: Maybe Double
  
instance Arbitrary DetectLanguageAPI200ResponseInner where
  arbitrary = sized genDetectLanguageAPI200ResponseInner

genDetectLanguageAPI200ResponseInner :: Int -> Gen DetectLanguageAPI200ResponseInner
genDetectLanguageAPI200ResponseInner n =
  DetectLanguageAPI200ResponseInner
    <$> arbitraryReducedMaybe n -- detectLanguageAPI200ResponseInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectLanguageAPI200ResponseInnerConfidence :: Maybe Double
  
instance Arbitrary DetectMainImageColorAPI200ResponseInner where
  arbitrary = sized genDetectMainImageColorAPI200ResponseInner

genDetectMainImageColorAPI200ResponseInner :: Int -> Gen DetectMainImageColorAPI200ResponseInner
genDetectMainImageColorAPI200ResponseInner n =
  DetectMainImageColorAPI200ResponseInner
    <$> arbitraryReducedMaybe n -- detectMainImageColorAPI200ResponseInnerSpecificColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectMainImageColorAPI200ResponseInnerMainColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectMainImageColorAPI200ResponseInnerHexCode :: Maybe Text
  
instance Arbitrary DetectSentimentAPI200Response where
  arbitrary = sized genDetectSentimentAPI200Response

genDetectSentimentAPI200Response :: Int -> Gen DetectSentimentAPI200Response
genDetectSentimentAPI200Response n =
  DetectSentimentAPI200Response
    <$> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseDocument :: Maybe DetectSentimentAPI200ResponseDocument
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseSentences :: Maybe [DetectSentimentAPI200ResponseSentencesInner]
  
instance Arbitrary DetectSentimentAPI200ResponseDocument where
  arbitrary = sized genDetectSentimentAPI200ResponseDocument

genDetectSentimentAPI200ResponseDocument :: Int -> Gen DetectSentimentAPI200ResponseDocument
genDetectSentimentAPI200ResponseDocument n =
  DetectSentimentAPI200ResponseDocument
    <$> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseDocumentSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseDocumentConfidence :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseDocumentAverageConfidence :: Maybe Int
  
instance Arbitrary DetectSentimentAPI200ResponseSentencesInner where
  arbitrary = sized genDetectSentimentAPI200ResponseSentencesInner

genDetectSentimentAPI200ResponseSentencesInner :: Int -> Gen DetectSentimentAPI200ResponseSentencesInner
genDetectSentimentAPI200ResponseSentencesInner n =
  DetectSentimentAPI200ResponseSentencesInner
    <$> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseSentencesInnerLength :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseSentencesInnerSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseSentencesInnerOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentimentAPI200ResponseSentencesInnerConfidence :: Maybe Int
  
instance Arbitrary ExtractAuthorsAPI200Response where
  arbitrary = sized genExtractAuthorsAPI200Response

genExtractAuthorsAPI200Response :: Int -> Gen ExtractAuthorsAPI200Response
genExtractAuthorsAPI200Response n =
  ExtractAuthorsAPI200Response
    <$> arbitraryReducedMaybe n -- extractAuthorsAPI200ResponseAuthors :: Maybe [ExtractAuthorsAPI200ResponseAuthorsInner]
  
instance Arbitrary ExtractAuthorsAPI200ResponseAuthorsInner where
  arbitrary = sized genExtractAuthorsAPI200ResponseAuthorsInner

genExtractAuthorsAPI200ResponseAuthorsInner :: Int -> Gen ExtractAuthorsAPI200ResponseAuthorsInner
genExtractAuthorsAPI200ResponseAuthorsInner n =
  ExtractAuthorsAPI200ResponseAuthorsInner
    <$> arbitraryReducedMaybe n -- extractAuthorsAPI200ResponseAuthorsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractAuthorsAPI200ResponseAuthorsInnerName :: Maybe Text
  
instance Arbitrary ExtractContentFromAWebPageAPI200Response where
  arbitrary = sized genExtractContentFromAWebPageAPI200Response

genExtractContentFromAWebPageAPI200Response :: Int -> Gen ExtractContentFromAWebPageAPI200Response
genExtractContentFromAWebPageAPI200Response n =
  ExtractContentFromAWebPageAPI200Response
    <$> arbitraryReducedMaybe n -- extractContentFromAWebPageAPI200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPageAPI200ResponseMainText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPageAPI200ResponseMainHtml :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPageAPI200ResponseImages :: Maybe [Text]
  
instance Arbitrary ExtractDatesAPI200Response where
  arbitrary = sized genExtractDatesAPI200Response

genExtractDatesAPI200Response :: Int -> Gen ExtractDatesAPI200Response
genExtractDatesAPI200Response n =
  ExtractDatesAPI200Response
    <$> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDates :: Maybe [ExtractDatesAPI200ResponseDatesInner]
  
instance Arbitrary ExtractDatesAPI200ResponseDatesInner where
  arbitrary = sized genExtractDatesAPI200ResponseDatesInner

genExtractDatesAPI200ResponseDatesInner :: Int -> Gen ExtractDatesAPI200ResponseDatesInner
genExtractDatesAPI200ResponseDatesInner n =
  ExtractDatesAPI200ResponseDatesInner
    <$> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDatesInnerStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDatesInnerDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDatesInnerNormalizedDate :: Maybe Double
    <*> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDatesInnerTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractDatesAPI200ResponseDatesInnerEndPosition :: Maybe Int
  
instance Arbitrary ExtractEntitiesAPI200Response where
  arbitrary = sized genExtractEntitiesAPI200Response

genExtractEntitiesAPI200Response :: Int -> Gen ExtractEntitiesAPI200Response
genExtractEntitiesAPI200Response n =
  ExtractEntitiesAPI200Response
    <$> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntities :: Maybe [ExtractEntitiesAPI200ResponseEntitiesInner]
  
instance Arbitrary ExtractEntitiesAPI200ResponseEntitiesInner where
  arbitrary = sized genExtractEntitiesAPI200ResponseEntitiesInner

genExtractEntitiesAPI200ResponseEntitiesInner :: Int -> Gen ExtractEntitiesAPI200ResponseEntitiesInner
genExtractEntitiesAPI200ResponseEntitiesInner n =
  ExtractEntitiesAPI200ResponseEntitiesInner
    <$> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntitiesInnerStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntitiesInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntitiesInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntitiesInnerValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntitiesAPI200ResponseEntitiesInnerEndPosition :: Maybe Int
  
instance Arbitrary ExtractNewsAPI200Response where
  arbitrary = sized genExtractNewsAPI200Response

genExtractNewsAPI200Response :: Int -> Gen ExtractNewsAPI200Response
genExtractNewsAPI200Response n =
  ExtractNewsAPI200Response
    <$> arbitraryReducedMaybe n -- extractNewsAPI200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseImages :: Maybe [ExtractNewsAPI200ResponseImagesInner]
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideos :: Maybe [ExtractNewsAPI200ResponseVideosInner]
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponsePublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseAuthors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseLanguage :: Maybe Text
  
instance Arbitrary ExtractNewsAPI200ResponseImagesInner where
  arbitrary = sized genExtractNewsAPI200ResponseImagesInner

genExtractNewsAPI200ResponseImagesInner :: Int -> Gen ExtractNewsAPI200ResponseImagesInner
genExtractNewsAPI200ResponseImagesInner n =
  ExtractNewsAPI200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- extractNewsAPI200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseImagesInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary ExtractNewsAPI200ResponseVideosInner where
  arbitrary = sized genExtractNewsAPI200ResponseVideosInner

genExtractNewsAPI200ResponseVideosInner :: Int -> Gen ExtractNewsAPI200ResponseVideosInner
genExtractNewsAPI200ResponseVideosInner n =
  ExtractNewsAPI200ResponseVideosInner
    <$> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideosInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideosInnerDuration :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideosInnerThumbnail :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideosInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNewsAPI200ResponseVideosInnerUrl :: Maybe Text
  
instance Arbitrary ExtractPublishDateAPI200Response where
  arbitrary = sized genExtractPublishDateAPI200Response

genExtractPublishDateAPI200Response :: Int -> Gen ExtractPublishDateAPI200Response
genExtractPublishDateAPI200Response n =
  ExtractPublishDateAPI200Response
    <$> arbitraryReducedMaybe n -- extractPublishDateAPI200ResponsePublishDate :: Maybe Text
  
instance Arbitrary FindSimilarBooksAPI200Response where
  arbitrary = sized genFindSimilarBooksAPI200Response

genFindSimilarBooksAPI200Response :: Int -> Gen FindSimilarBooksAPI200Response
genFindSimilarBooksAPI200Response n =
  FindSimilarBooksAPI200Response
    <$> arbitraryReducedMaybe n -- findSimilarBooksAPI200ResponseSimilarBooks :: Maybe [SearchBooksAPI200ResponseBooksInnerInner]
  
instance Arbitrary FindSimilarGamesAPI200Response where
  arbitrary = sized genFindSimilarGamesAPI200Response

genFindSimilarGamesAPI200Response :: Int -> Gen FindSimilarGamesAPI200Response
genFindSimilarGamesAPI200Response n =
  FindSimilarGamesAPI200Response
    <$> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResults :: Maybe [FindSimilarGamesAPI200ResponseResultsInner]
  
instance Arbitrary FindSimilarGamesAPI200ResponseResultsInner where
  arbitrary = sized genFindSimilarGamesAPI200ResponseResultsInner

genFindSimilarGamesAPI200ResponseResultsInner :: Int -> Gen FindSimilarGamesAPI200ResponseResultsInner
genFindSimilarGamesAPI200ResponseResultsInner n =
  FindSimilarGamesAPI200ResponseResultsInner
    <$> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerShortDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerMicroTrailer :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerYear :: Maybe Int
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerRating :: Maybe SearchGamesAPI200ResponseResultsInnerRating
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerAdultOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerScreenshots :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- findSimilarGamesAPI200ResponseResultsInnerGameplay :: Maybe Text
  
instance Arbitrary GenerateNonsenseWordAPI200Response where
  arbitrary = sized genGenerateNonsenseWordAPI200Response

genGenerateNonsenseWordAPI200Response :: Int -> Gen GenerateNonsenseWordAPI200Response
genGenerateNonsenseWordAPI200Response n =
  GenerateNonsenseWordAPI200Response
    <$> arbitraryReducedMaybe n -- generateNonsenseWordAPI200ResponseWord :: Maybe Text
    <*> arbitraryReducedMaybe n -- generateNonsenseWordAPI200ResponseRating :: Maybe Double
  
instance Arbitrary ListWordSynonymsAPI200Response where
  arbitrary = sized genListWordSynonymsAPI200Response

genListWordSynonymsAPI200Response :: Int -> Gen ListWordSynonymsAPI200Response
genListWordSynonymsAPI200Response n =
  ListWordSynonymsAPI200Response
    <$> arbitraryReducedMaybe n -- listWordSynonymsAPI200ResponseSynonyms :: Maybe [Text]
  
instance Arbitrary PluralizeWordAPI200Response where
  arbitrary = sized genPluralizeWordAPI200Response

genPluralizeWordAPI200Response :: Int -> Gen PluralizeWordAPI200Response
genPluralizeWordAPI200Response n =
  PluralizeWordAPI200Response
    <$> arbitraryReducedMaybe n -- pluralizeWordAPI200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- pluralizeWordAPI200ResponsePlural :: Maybe Text
  
instance Arbitrary RandomMemeAPI200Response where
  arbitrary = sized genRandomMemeAPI200Response

genRandomMemeAPI200Response :: Int -> Gen RandomMemeAPI200Response
genRandomMemeAPI200Response n =
  RandomMemeAPI200Response
    <$> arbitraryReducedMaybe n -- randomMemeAPI200ResponseDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMemeAPI200ResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMemeAPI200ResponseType :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMemeAPI200ResponseWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- randomMemeAPI200ResponseHeight :: Maybe Int
    <*> arbitraryReducedMaybe n -- randomMemeAPI200ResponseRatio :: Maybe Double
  
instance Arbitrary RandomPoemAPI200Response where
  arbitrary = sized genRandomPoemAPI200Response

genRandomPoemAPI200Response :: Int -> Gen RandomPoemAPI200Response
genRandomPoemAPI200Response n =
  RandomPoemAPI200Response
    <$> arbitraryReducedMaybe n -- randomPoemAPI200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomPoemAPI200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomPoemAPI200ResponsePoem :: Maybe Text
  
instance Arbitrary RandomQuoteAPI200Response where
  arbitrary = sized genRandomQuoteAPI200Response

genRandomQuoteAPI200Response :: Int -> Gen RandomQuoteAPI200Response
genRandomQuoteAPI200Response n =
  RandomQuoteAPI200Response
    <$> arbitraryReducedMaybe n -- randomQuoteAPI200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomQuoteAPI200ResponseQuote :: Maybe Text
  
instance Arbitrary RandomRiddleAPI200Response where
  arbitrary = sized genRandomRiddleAPI200Response

genRandomRiddleAPI200Response :: Int -> Gen RandomRiddleAPI200Response
genRandomRiddleAPI200Response n =
  RandomRiddleAPI200Response
    <$> arbitraryReducedMaybe n -- randomRiddleAPI200ResponseRiddle :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomRiddleAPI200ResponseAnswer :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomRiddleAPI200ResponseDifficulty :: Maybe Text
  
instance Arbitrary RandomTriviaAPI200Response where
  arbitrary = sized genRandomTriviaAPI200Response

genRandomTriviaAPI200Response :: Int -> Gen RandomTriviaAPI200Response
genRandomTriviaAPI200Response n =
  RandomTriviaAPI200Response
    <$> arbitraryReducedMaybe n -- randomTriviaAPI200ResponseTrivia :: Maybe Text
  
instance Arbitrary ReadKeyValueFromStoreAPI200Response where
  arbitrary = sized genReadKeyValueFromStoreAPI200Response

genReadKeyValueFromStoreAPI200Response :: Int -> Gen ReadKeyValueFromStoreAPI200Response
genReadKeyValueFromStoreAPI200Response n =
  ReadKeyValueFromStoreAPI200Response
    <$> arbitraryReducedMaybe n -- readKeyValueFromStoreAPI200ResponseValue :: Maybe Text
  
instance Arbitrary RetrieveArtworkById200Response where
  arbitrary = sized genRetrieveArtworkById200Response

genRetrieveArtworkById200Response :: Int -> Gen RetrieveArtworkById200Response
genRetrieveArtworkById200Response n =
  RetrieveArtworkById200Response
    <$> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseStartDate :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseEndDate :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveArtworkById200ResponseDescription :: Maybe Text
  
instance Arbitrary RetrieveGameById200Response where
  arbitrary = sized genRetrieveGameById200Response

genRetrieveGameById200Response :: Int -> Gen RetrieveGameById200Response
genRetrieveGameById200Response n =
  RetrieveGameById200Response
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseGameplay :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseXUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRating :: Maybe RetrieveGameById200ResponseRating
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseShortDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseReleaseDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseDeveloper :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytime :: Maybe RetrieveGameById200ResponsePlaytime
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlatforms :: Maybe [SearchGamesAPI200ResponseResultsInnerPlatformsInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseTags :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseGenres :: Maybe [SearchGamesAPI200ResponseResultsInnerPlatformsInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseThemes :: Maybe [SearchGamesAPI200ResponseResultsInnerPlatformsInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseAdultOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlayModes :: Maybe [SearchGamesAPI200ResponseResultsInnerPlatformsInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseScreenshots :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseVideos :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffers :: Maybe [RetrieveGameById200ResponseOffersInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOfficialStores :: Maybe [RetrieveGameById200ResponseOfficialStoresInner]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseMicroTrailer :: Maybe Text
  
instance Arbitrary RetrieveGameById200ResponseOffersInner where
  arbitrary = sized genRetrieveGameById200ResponseOffersInner

genRetrieveGameById200ResponseOffersInner :: Int -> Gen RetrieveGameById200ResponseOffersInner
genRetrieveGameById200ResponseOffersInner n =
  RetrieveGameById200ResponseOffersInner
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerStoreName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPrice :: Maybe RetrieveGameById200ResponseOffersInnerPrice
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPlatform :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerUrl :: Maybe Text
  
instance Arbitrary RetrieveGameById200ResponseOffersInnerPrice where
  arbitrary = sized genRetrieveGameById200ResponseOffersInnerPrice

genRetrieveGameById200ResponseOffersInnerPrice :: Int -> Gen RetrieveGameById200ResponseOffersInnerPrice
genRetrieveGameById200ResponseOffersInnerPrice n =
  RetrieveGameById200ResponseOffersInnerPrice
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPriceCurrency :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPriceDiscountPercent :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPriceValue :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOffersInnerPriceInitial :: Maybe Double
  
instance Arbitrary RetrieveGameById200ResponseOfficialStoresInner where
  arbitrary = sized genRetrieveGameById200ResponseOfficialStoresInner

genRetrieveGameById200ResponseOfficialStoresInner :: Int -> Gen RetrieveGameById200ResponseOfficialStoresInner
genRetrieveGameById200ResponseOfficialStoresInner n =
  RetrieveGameById200ResponseOfficialStoresInner
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponseOfficialStoresInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseOfficialStoresInnerSource :: Maybe Text
  
instance Arbitrary RetrieveGameById200ResponsePlaytime where
  arbitrary = sized genRetrieveGameById200ResponsePlaytime

genRetrieveGameById200ResponsePlaytime :: Int -> Gen RetrieveGameById200ResponsePlaytime
genRetrieveGameById200ResponsePlaytime n =
  RetrieveGameById200ResponsePlaytime
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimePercentiles :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimeMin :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimeMedian :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimeMax :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimeMean :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponsePlaytimeMentions :: Maybe Int
  
instance Arbitrary RetrieveGameById200ResponseRating where
  arbitrary = sized genRetrieveGameById200ResponseRating

genRetrieveGameById200ResponseRating :: Int -> Gen RetrieveGameById200ResponseRating
genRetrieveGameById200ResponseRating n =
  RetrieveGameById200ResponseRating
    <$> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingCountCritics :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingMeanPlayers :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingMeanCritics :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingMean :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveGameById200ResponseRatingCountPlayers :: Maybe Int
  
instance Arbitrary RetrievePageRankAPI200Response where
  arbitrary = sized genRetrievePageRankAPI200Response

genRetrievePageRankAPI200Response :: Int -> Gen RetrievePageRankAPI200Response
genRetrievePageRankAPI200Response n =
  RetrievePageRankAPI200Response
    <$> arbitraryReducedMaybe n -- retrievePageRankAPI200ResponsePageRank :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrievePageRankAPI200ResponsePosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrievePageRankAPI200ResponsePercentile :: Maybe Double
  
instance Arbitrary RetrieveRecipeInformationAPI200Response where
  arbitrary = sized genRetrieveRecipeInformationAPI200Response

genRetrieveRecipeInformationAPI200Response :: Int -> Gen RetrieveRecipeInformationAPI200Response
genRetrieveRecipeInformationAPI200Response n =
  RetrieveRecipeInformationAPI200Response
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseServings :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryProperties :: Maybe RetrieveRecipeInformationAPI200ResponseDietaryProperties
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponsePricePerServing :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTimes :: Maybe RetrieveRecipeInformationAPI200ResponseTimes
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutrition :: Maybe RetrieveRecipeInformationAPI200ResponseNutrition
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTaste :: Maybe RetrieveRecipeInformationAPI200ResponseTaste
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCuisines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseMealTypes :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseOccasions :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredients :: Maybe [RetrieveRecipeInformationAPI200ResponseIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructions :: Maybe [RetrieveRecipeInformationAPI200ResponseInstructionsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCredits :: Maybe RetrieveRecipeInformationAPI200ResponseCredits
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseScores :: Maybe RetrieveRecipeInformationAPI200ResponseScores
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseCredits where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseCredits

genRetrieveRecipeInformationAPI200ResponseCredits :: Int -> Gen RetrieveRecipeInformationAPI200ResponseCredits
genRetrieveRecipeInformationAPI200ResponseCredits n =
  RetrieveRecipeInformationAPI200ResponseCredits
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCreditsLicense :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCreditsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCreditsSourceName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseCreditsSourceUrl :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseDietaryProperties where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseDietaryProperties

genRetrieveRecipeInformationAPI200ResponseDietaryProperties :: Int -> Gen RetrieveRecipeInformationAPI200ResponseDietaryProperties
genRetrieveRecipeInformationAPI200ResponseDietaryProperties n =
  RetrieveRecipeInformationAPI200ResponseDietaryProperties
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesLowFodmap :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesVegetarian :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesVegan :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesGlutenFree :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesDairyFree :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesGaps :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseDietaryPropertiesDiets :: Maybe [Text]
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseIngredientsInner where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseIngredientsInner

genRetrieveRecipeInformationAPI200ResponseIngredientsInner :: Int -> Gen RetrieveRecipeInformationAPI200ResponseIngredientsInner
genRetrieveRecipeInformationAPI200ResponseIngredientsInner n =
  RetrieveRecipeInformationAPI200ResponseIngredientsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerNameClean :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures :: Maybe RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerMeta :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerOriginalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerAisle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerConsistency :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures

genRetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures :: Int -> Gen RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures
genRetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures n =
  RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerMeasuresMetric :: Maybe SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseIngredientsInnerMeasuresUs :: Maybe SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseInstructionsInner where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseInstructionsInner

genRetrieveRecipeInformationAPI200ResponseInstructionsInner :: Int -> Gen RetrieveRecipeInformationAPI200ResponseInstructionsInner
genRetrieveRecipeInformationAPI200ResponseInstructionsInner n =
  RetrieveRecipeInformationAPI200ResponseInstructionsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerSteps :: Maybe [RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner]
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner

genRetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner :: Int -> Gen RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner
genRetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner n =
  RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInnerNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInnerIngredients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInnerEquipment :: Maybe [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInnerStep :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseNutrition where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseNutrition

genRetrieveRecipeInformationAPI200ResponseNutrition :: Int -> Gen RetrieveRecipeInformationAPI200ResponseNutrition
genRetrieveRecipeInformationAPI200ResponseNutrition n =
  RetrieveRecipeInformationAPI200ResponseNutrition
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionWeightPerServing :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionCaloricBreakdown :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionFlavonoids :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdown :: Maybe [RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionProperties :: Maybe [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionNutrients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner

genRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner :: Int -> Gen RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner
genRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner n =
  RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInnerNutrients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseScores where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseScores

genRetrieveRecipeInformationAPI200ResponseScores :: Int -> Gen RetrieveRecipeInformationAPI200ResponseScores
genRetrieveRecipeInformationAPI200ResponseScores n =
  RetrieveRecipeInformationAPI200ResponseScores
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseScoresMetaScore :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseScoresWeightWatcherSmartPoints :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseScoresHealthScore :: Maybe Int
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseTaste where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseTaste

genRetrieveRecipeInformationAPI200ResponseTaste :: Int -> Gen RetrieveRecipeInformationAPI200ResponseTaste
genRetrieveRecipeInformationAPI200ResponseTaste n =
  RetrieveRecipeInformationAPI200ResponseTaste
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteFattiness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteSpiciness :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteSaltiness :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteBitterness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteSavoriness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteSweetness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTasteSourness :: Maybe Double
  
instance Arbitrary RetrieveRecipeInformationAPI200ResponseTimes where
  arbitrary = sized genRetrieveRecipeInformationAPI200ResponseTimes

genRetrieveRecipeInformationAPI200ResponseTimes :: Int -> Gen RetrieveRecipeInformationAPI200ResponseTimes
genRetrieveRecipeInformationAPI200ResponseTimes n =
  RetrieveRecipeInformationAPI200ResponseTimes
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformationAPI200ResponseTimesTotalMinutes :: Maybe Int
  
instance Arbitrary ScoreReadabilityAPI200Response where
  arbitrary = sized genScoreReadabilityAPI200Response

genScoreReadabilityAPI200Response :: Int -> Gen ScoreReadabilityAPI200Response
genScoreReadabilityAPI200Response n =
  ScoreReadabilityAPI200Response
    <$> arbitraryReducedMaybe n -- scoreReadabilityAPI200ResponseReadability :: Maybe ScoreTextAPI200ResponseReadability
  
instance Arbitrary ScoreTextAPI200Response where
  arbitrary = sized genScoreTextAPI200Response

genScoreTextAPI200Response :: Int -> Gen ScoreTextAPI200Response
genScoreTextAPI200Response n =
  ScoreTextAPI200Response
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseNumberOfWords :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseNumberOfSentences :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadability :: Maybe ScoreTextAPI200ResponseReadability
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmability :: Maybe ScoreTextAPI200ResponseSkimmability
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingness :: Maybe ScoreTextAPI200ResponseInterestingness
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyle :: Maybe ScoreTextAPI200ResponseStyle
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseTotalScore :: Maybe Double
  
instance Arbitrary ScoreTextAPI200ResponseInterestingness where
  arbitrary = sized genScoreTextAPI200ResponseInterestingness

genScoreTextAPI200ResponseInterestingness :: Int -> Gen ScoreTextAPI200ResponseInterestingness
genScoreTextAPI200ResponseInterestingness n =
  ScoreTextAPI200ResponseInterestingness
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessMainscores :: Maybe ScoreTextAPI200ResponseSkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscores :: Maybe ScoreTextAPI200ResponseInterestingnessSubscores
  
instance Arbitrary ScoreTextAPI200ResponseInterestingnessSubscores where
  arbitrary = sized genScoreTextAPI200ResponseInterestingnessSubscores

genScoreTextAPI200ResponseInterestingnessSubscores :: Int -> Gen ScoreTextAPI200ResponseInterestingnessSubscores
genScoreTextAPI200ResponseInterestingnessSubscores n =
  ScoreTextAPI200ResponseInterestingnessSubscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscoresTitleRatingScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscoresQuoteScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscoresLengthScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscoresLinkScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseInterestingnessSubscoresGoogleHitsScore :: Maybe [Int]
  
instance Arbitrary ScoreTextAPI200ResponseReadability where
  arbitrary = sized genScoreTextAPI200ResponseReadability

genScoreTextAPI200ResponseReadability :: Int -> Gen ScoreTextAPI200ResponseReadability
genScoreTextAPI200ResponseReadability n =
  ScoreTextAPI200ResponseReadability
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilityMainscores :: Maybe ScoreTextAPI200ResponseReadabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscores :: Maybe ScoreTextAPI200ResponseReadabilitySubscores
  
instance Arbitrary ScoreTextAPI200ResponseReadabilityMainscores where
  arbitrary = sized genScoreTextAPI200ResponseReadabilityMainscores

genScoreTextAPI200ResponseReadabilityMainscores :: Int -> Gen ScoreTextAPI200ResponseReadabilityMainscores
genScoreTextAPI200ResponseReadabilityMainscores n =
  ScoreTextAPI200ResponseReadabilityMainscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilityMainscoresTotal :: Maybe Int
  
instance Arbitrary ScoreTextAPI200ResponseReadabilitySubscores where
  arbitrary = sized genScoreTextAPI200ResponseReadabilitySubscores

genScoreTextAPI200ResponseReadabilitySubscores :: Int -> Gen ScoreTextAPI200ResponseReadabilitySubscores
genScoreTextAPI200ResponseReadabilitySubscores n =
  ScoreTextAPI200ResponseReadabilitySubscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresReadingTimeSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresForcast :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresFlesch :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresSmog :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresAri :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresLix :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresColemanLiau :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresKincaid :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseReadabilitySubscoresFog :: Maybe Double
  
instance Arbitrary ScoreTextAPI200ResponseSkimmability where
  arbitrary = sized genScoreTextAPI200ResponseSkimmability

genScoreTextAPI200ResponseSkimmability :: Int -> Gen ScoreTextAPI200ResponseSkimmability
genScoreTextAPI200ResponseSkimmability n =
  ScoreTextAPI200ResponseSkimmability
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilityMainscores :: Maybe ScoreTextAPI200ResponseSkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscores :: Maybe ScoreTextAPI200ResponseSkimmabilitySubscores
  
instance Arbitrary ScoreTextAPI200ResponseSkimmabilityMainscores where
  arbitrary = sized genScoreTextAPI200ResponseSkimmabilityMainscores

genScoreTextAPI200ResponseSkimmabilityMainscores :: Int -> Gen ScoreTextAPI200ResponseSkimmabilityMainscores
genScoreTextAPI200ResponseSkimmabilityMainscores n =
  ScoreTextAPI200ResponseSkimmabilityMainscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilityMainscoresTotal :: Maybe Double
  
instance Arbitrary ScoreTextAPI200ResponseSkimmabilitySubscores where
  arbitrary = sized genScoreTextAPI200ResponseSkimmabilitySubscores

genScoreTextAPI200ResponseSkimmabilitySubscores :: Int -> Gen ScoreTextAPI200ResponseSkimmabilitySubscores
genScoreTextAPI200ResponseSkimmabilitySubscores n =
  ScoreTextAPI200ResponseSkimmabilitySubscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresBulletPointRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresImageScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresHighlightedWordRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresVideoScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresParagraphScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseSkimmabilitySubscoresParagraphHeadlineRatioScore :: Maybe [Int]
  
instance Arbitrary ScoreTextAPI200ResponseStyle where
  arbitrary = sized genScoreTextAPI200ResponseStyle

genScoreTextAPI200ResponseStyle :: Int -> Gen ScoreTextAPI200ResponseStyle
genScoreTextAPI200ResponseStyle n =
  ScoreTextAPI200ResponseStyle
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyleMainscores :: Maybe ScoreTextAPI200ResponseReadabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyleSubscores :: Maybe ScoreTextAPI200ResponseStyleSubscores
  
instance Arbitrary ScoreTextAPI200ResponseStyleSubscores where
  arbitrary = sized genScoreTextAPI200ResponseStyleSubscores

genScoreTextAPI200ResponseStyleSubscores :: Int -> Gen ScoreTextAPI200ResponseStyleSubscores
genScoreTextAPI200ResponseStyleSubscores n =
  ScoreTextAPI200ResponseStyleSubscores
    <$> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyleSubscoresAbbreviationScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyleSubscoresStyleScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreTextAPI200ResponseStyleSubscoresSpellingScore :: Maybe [Int]
  
instance Arbitrary SearchBooksAPI200Response where
  arbitrary = sized genSearchBooksAPI200Response

genSearchBooksAPI200Response :: Int -> Gen SearchBooksAPI200Response
genSearchBooksAPI200Response n =
  SearchBooksAPI200Response
    <$> arbitraryReducedMaybe n -- searchBooksAPI200ResponseTotalResults :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooksAPI200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooksAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooksAPI200ResponseBooks :: Maybe [[SearchBooksAPI200ResponseBooksInnerInner]]
  
instance Arbitrary SearchBooksAPI200ResponseBooksInnerInner where
  arbitrary = sized genSearchBooksAPI200ResponseBooksInnerInner

genSearchBooksAPI200ResponseBooksInnerInner :: Int -> Gen SearchBooksAPI200ResponseBooksInnerInner
genSearchBooksAPI200ResponseBooksInnerInner n =
  SearchBooksAPI200ResponseBooksInnerInner
    <$> arbitraryReducedMaybe n -- searchBooksAPI200ResponseBooksInnerInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooksAPI200ResponseBooksInnerInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooksAPI200ResponseBooksInnerInnerId :: Maybe Int
  
instance Arbitrary SearchDrinksAPI200Response where
  arbitrary = sized genSearchDrinksAPI200Response

genSearchDrinksAPI200Response :: Int -> Gen SearchDrinksAPI200Response
genSearchDrinksAPI200Response n =
  SearchDrinksAPI200Response
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinks :: Maybe [SearchDrinksAPI200ResponseDrinksInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseTotalResults :: Maybe Int
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInner

genSearchDrinksAPI200ResponseDrinksInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInner
genSearchDrinksAPI200ResponseDrinksInner n =
  SearchDrinksAPI200ResponseDrinksInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerFlavors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructions :: Maybe [SearchDrinksAPI200ResponseDrinksInnerInstructionsInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutrition :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutrition
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerGlassType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerCredits :: Maybe SearchDrinksAPI200ResponseDrinksInnerCredits
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerPricePerServing :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerCuisines :: Maybe [Text]
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerCredits where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerCredits

genSearchDrinksAPI200ResponseDrinksInnerCredits :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerCredits
genSearchDrinksAPI200ResponseDrinksInnerCredits n =
  SearchDrinksAPI200ResponseDrinksInnerCredits
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerCreditsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerCreditsSourceName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerCreditsSourceUrl :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerIngredientsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerIngredientsInner

genSearchDrinksAPI200ResponseDrinksInnerIngredientsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
genSearchDrinksAPI200ResponseDrinksInnerIngredientsInner n =
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerNameClean :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures :: Maybe SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeta :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerOriginalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerAisle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerConsistency :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures

genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures
genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures n =
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric :: Maybe SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs :: Maybe SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric

genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric n =
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetricUnitShort :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetricAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetricUnitLong :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs

genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs
genSearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs n =
  SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUsUnitShort :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUsAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUsUnitLong :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerInstructionsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerInstructionsInner

genSearchDrinksAPI200ResponseDrinksInnerInstructionsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerInstructionsInner
genSearchDrinksAPI200ResponseDrinksInnerInstructionsInner n =
  SearchDrinksAPI200ResponseDrinksInnerInstructionsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerSteps :: Maybe [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner]
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner

genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner
genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner n =
  SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerEquipment :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerStep :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner

genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
genSearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner n =
  SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerId :: Maybe Int
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutrition where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutrition

genSearchDrinksAPI200ResponseDrinksInnerNutrition :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutrition
genSearchDrinksAPI200ResponseDrinksInnerNutrition n =
  SearchDrinksAPI200ResponseDrinksInnerNutrition
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown :: Maybe SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionFlavonoids :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdown :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionProperties :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionNutrients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown

genSearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
genSearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdownPercentFat :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdownPercentCarbs :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdownPercentProtein :: Maybe Double
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner

genSearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner
genSearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner

genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner
genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrients :: Maybe [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner]
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner

genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
genSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerPercentOfDailyNeeds :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner

genSearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner
genSearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInnerPercentOfDailyNeeds :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing where
  arbitrary = sized genSearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing

genSearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing :: Int -> Gen SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
genSearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing n =
  SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing
    <$> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServingAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServingUnit :: Maybe Text
  
instance Arbitrary SearchGamesAPI200Response where
  arbitrary = sized genSearchGamesAPI200Response

genSearchGamesAPI200Response :: Int -> Gen SearchGamesAPI200Response
genSearchGamesAPI200Response n =
  SearchGamesAPI200Response
    <$> arbitraryReducedMaybeValue n -- searchGamesAPI200ResponseSorting :: Maybe A.Value
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptions :: Maybe [SearchGamesAPI200ResponseActiveFilterOptionsInner]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseQuery :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseTotalResults :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseLimit :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResults :: Maybe [SearchGamesAPI200ResponseResultsInner]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptions :: Maybe [SearchGamesAPI200ResponseFilterOptionsInner]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseSortingOptions :: Maybe [SearchGamesAPI200ResponseSortingOptionsInner]
  
instance Arbitrary SearchGamesAPI200ResponseActiveFilterOptionsInner where
  arbitrary = sized genSearchGamesAPI200ResponseActiveFilterOptionsInner

genSearchGamesAPI200ResponseActiveFilterOptionsInner :: Int -> Gen SearchGamesAPI200ResponseActiveFilterOptionsInner
genSearchGamesAPI200ResponseActiveFilterOptionsInner n =
  SearchGamesAPI200ResponseActiveFilterOptionsInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptionsInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptionsInnerConnection :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptionsInnerValues :: Maybe [SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner]
  
instance Arbitrary SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner where
  arbitrary = sized genSearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner

genSearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner :: Int -> Gen SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner
genSearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner n =
  SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptionsInnerValuesInnerMatch :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseActiveFilterOptionsInnerValuesInnerValue :: Maybe Text
  
instance Arbitrary SearchGamesAPI200ResponseFilterOptionsInner where
  arbitrary = sized genSearchGamesAPI200ResponseFilterOptionsInner

genSearchGamesAPI200ResponseFilterOptionsInner :: Int -> Gen SearchGamesAPI200ResponseFilterOptionsInner
genSearchGamesAPI200ResponseFilterOptionsInner n =
  SearchGamesAPI200ResponseFilterOptionsInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerFilterType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerValues :: Maybe [SearchGamesAPI200ResponseFilterOptionsInnerValuesInner]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerFilterConnection :: Maybe Text
  
instance Arbitrary SearchGamesAPI200ResponseFilterOptionsInnerValuesInner where
  arbitrary = sized genSearchGamesAPI200ResponseFilterOptionsInnerValuesInner

genSearchGamesAPI200ResponseFilterOptionsInnerValuesInner :: Int -> Gen SearchGamesAPI200ResponseFilterOptionsInnerValuesInner
genSearchGamesAPI200ResponseFilterOptionsInnerValuesInner n =
  SearchGamesAPI200ResponseFilterOptionsInnerValuesInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerValuesInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerValuesInnerCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseFilterOptionsInnerValuesInnerKey :: Maybe Text
  
instance Arbitrary SearchGamesAPI200ResponseResultsInner where
  arbitrary = sized genSearchGamesAPI200ResponseResultsInner

genSearchGamesAPI200ResponseResultsInner :: Int -> Gen SearchGamesAPI200ResponseResultsInner
genSearchGamesAPI200ResponseResultsInner n =
  SearchGamesAPI200ResponseResultsInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerShortDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerYear :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerRating :: Maybe SearchGamesAPI200ResponseResultsInnerRating
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerAdultOnly :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerScreenshots :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerPlatforms :: Maybe [SearchGamesAPI200ResponseResultsInnerPlatformsInner]
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerMicroTrailer :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerGenre :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerGameplay :: Maybe Text
  
instance Arbitrary SearchGamesAPI200ResponseResultsInnerPlatformsInner where
  arbitrary = sized genSearchGamesAPI200ResponseResultsInnerPlatformsInner

genSearchGamesAPI200ResponseResultsInnerPlatformsInner :: Int -> Gen SearchGamesAPI200ResponseResultsInnerPlatformsInner
genSearchGamesAPI200ResponseResultsInnerPlatformsInner n =
  SearchGamesAPI200ResponseResultsInnerPlatformsInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerPlatformsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerPlatformsInnerValue :: Maybe Text
  
instance Arbitrary SearchGamesAPI200ResponseResultsInnerRating where
  arbitrary = sized genSearchGamesAPI200ResponseResultsInnerRating

genSearchGamesAPI200ResponseResultsInnerRating :: Int -> Gen SearchGamesAPI200ResponseResultsInnerRating
genSearchGamesAPI200ResponseResultsInnerRating n =
  SearchGamesAPI200ResponseResultsInnerRating
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerRatingCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseResultsInnerRatingMean :: Maybe Double
  
instance Arbitrary SearchGamesAPI200ResponseSortingOptionsInner where
  arbitrary = sized genSearchGamesAPI200ResponseSortingOptionsInner

genSearchGamesAPI200ResponseSortingOptionsInner :: Int -> Gen SearchGamesAPI200ResponseSortingOptionsInner
genSearchGamesAPI200ResponseSortingOptionsInner n =
  SearchGamesAPI200ResponseSortingOptionsInner
    <$> arbitraryReducedMaybe n -- searchGamesAPI200ResponseSortingOptionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseSortingOptionsInnerKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGamesAPI200ResponseSortingOptionsInnerSort :: Maybe Text
  
instance Arbitrary SearchGifsAPI200Response where
  arbitrary = sized genSearchGifsAPI200Response

genSearchGifsAPI200Response :: Int -> Gen SearchGifsAPI200Response
genSearchGifsAPI200Response n =
  SearchGifsAPI200Response
    <$> arbitraryReducedMaybe n -- searchGifsAPI200ResponseImages :: Maybe [SearchGifsAPI200ResponseImagesInner]
  
instance Arbitrary SearchGifsAPI200ResponseImagesInner where
  arbitrary = sized genSearchGifsAPI200ResponseImagesInner

genSearchGifsAPI200ResponseImagesInner :: Int -> Gen SearchGifsAPI200ResponseImagesInner
genSearchGifsAPI200ResponseImagesInner n =
  SearchGifsAPI200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- searchGifsAPI200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGifsAPI200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGifsAPI200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary SearchIconsAPI200Response where
  arbitrary = sized genSearchIconsAPI200Response

genSearchIconsAPI200Response :: Int -> Gen SearchIconsAPI200Response
genSearchIconsAPI200Response n =
  SearchIconsAPI200Response
    <$> arbitraryReducedMaybe n -- searchIconsAPI200ResponseIcons :: Maybe [SearchRoyaltyFreeImagesAPI200ResponseImagesInner]
  
instance Arbitrary SearchJokesAPI200Response where
  arbitrary = sized genSearchJokesAPI200Response

genSearchJokesAPI200Response :: Int -> Gen SearchJokesAPI200Response
genSearchJokesAPI200Response n =
  SearchJokesAPI200Response
    <$> arbitraryReducedMaybe n -- searchJokesAPI200ResponseJokes :: Maybe [SearchJokesAPI200ResponseJokesInner]
    <*> arbitraryReducedMaybe n -- searchJokesAPI200ResponseAvailable :: Maybe Int
  
instance Arbitrary SearchJokesAPI200ResponseJokesInner where
  arbitrary = sized genSearchJokesAPI200ResponseJokesInner

genSearchJokesAPI200ResponseJokesInner :: Int -> Gen SearchJokesAPI200ResponseJokesInner
genSearchJokesAPI200ResponseJokesInner n =
  SearchJokesAPI200ResponseJokesInner
    <$> arbitraryReducedMaybe n -- searchJokesAPI200ResponseJokesInnerJoke :: Maybe Text
  
instance Arbitrary SearchMemesAPI200Response where
  arbitrary = sized genSearchMemesAPI200Response

genSearchMemesAPI200Response :: Int -> Gen SearchMemesAPI200Response
genSearchMemesAPI200Response n =
  SearchMemesAPI200Response
    <$> arbitraryReducedMaybe n -- searchMemesAPI200ResponseMemes :: Maybe [SearchMemesAPI200ResponseMemesInner]
    <*> arbitraryReducedMaybe n -- searchMemesAPI200ResponseAvailable :: Maybe Int
  
instance Arbitrary SearchMemesAPI200ResponseMemesInner where
  arbitrary = sized genSearchMemesAPI200ResponseMemesInner

genSearchMemesAPI200ResponseMemesInner :: Int -> Gen SearchMemesAPI200ResponseMemesInner
genSearchMemesAPI200ResponseMemesInner n =
  SearchMemesAPI200ResponseMemesInner
    <$> arbitraryReducedMaybe n -- searchMemesAPI200ResponseMemesInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchMemesAPI200ResponseMemesInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchMemesAPI200ResponseMemesInnerUrl :: Maybe Text
  
instance Arbitrary SearchNewsAPI200Response where
  arbitrary = sized genSearchNewsAPI200Response

genSearchNewsAPI200Response :: Int -> Gen SearchNewsAPI200Response
genSearchNewsAPI200Response n =
  SearchNewsAPI200Response
    <$> arbitraryReducedMaybe n -- searchNewsAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNews :: Maybe [SearchNewsAPI200ResponseNewsInner]
  
instance Arbitrary SearchNewsAPI200ResponseNewsInner where
  arbitrary = sized genSearchNewsAPI200ResponseNewsInner

genSearchNewsAPI200ResponseNewsInner :: Int -> Gen SearchNewsAPI200ResponseNewsInner
genSearchNewsAPI200ResponseNewsInner n =
  SearchNewsAPI200ResponseNewsInner
    <$> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerSentiment :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerVideo :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNewsAPI200ResponseNewsInnerAuthors :: Maybe [Text]
  
instance Arbitrary SearchRecipesAPI200Response where
  arbitrary = sized genSearchRecipesAPI200Response

genSearchRecipesAPI200Response :: Int -> Gen SearchRecipesAPI200Response
genSearchRecipesAPI200Response n =
  SearchRecipesAPI200Response
    <$> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipes :: Maybe [SearchRecipesAPI200ResponseRecipesInner]
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseTotalResults :: Maybe Int
  
instance Arbitrary SearchRecipesAPI200ResponseRecipesInner where
  arbitrary = sized genSearchRecipesAPI200ResponseRecipesInner

genSearchRecipesAPI200ResponseRecipesInner :: Int -> Gen SearchRecipesAPI200ResponseRecipesInner
genSearchRecipesAPI200ResponseRecipesInner n =
  SearchRecipesAPI200ResponseRecipesInner
    <$> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerNutrition :: Maybe SearchRecipesAPI200ResponseRecipesInnerNutrition
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerTitle :: Maybe Text
  
instance Arbitrary SearchRecipesAPI200ResponseRecipesInnerNutrition where
  arbitrary = sized genSearchRecipesAPI200ResponseRecipesInnerNutrition

genSearchRecipesAPI200ResponseRecipesInnerNutrition :: Int -> Gen SearchRecipesAPI200ResponseRecipesInnerNutrition
genSearchRecipesAPI200ResponseRecipesInnerNutrition n =
  SearchRecipesAPI200ResponseRecipesInnerNutrition
    <$> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerNutritionNutrients :: Maybe [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]
  
instance Arbitrary SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner where
  arbitrary = sized genSearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner

genSearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner :: Int -> Gen SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner
genSearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner n =
  SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner
    <$> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchRestaurantsAPI200Response where
  arbitrary = sized genSearchRestaurantsAPI200Response

genSearchRestaurantsAPI200Response :: Int -> Gen SearchRestaurantsAPI200Response
genSearchRestaurantsAPI200Response n =
  SearchRestaurantsAPI200Response
    <$> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurants :: Maybe [SearchRestaurantsAPI200ResponseRestaurantsInner]
  
instance Arbitrary SearchRestaurantsAPI200ResponseRestaurantsInner where
  arbitrary = sized genSearchRestaurantsAPI200ResponseRestaurantsInner

genSearchRestaurantsAPI200ResponseRestaurantsInner :: Int -> Gen SearchRestaurantsAPI200ResponseRestaurantsInner
genSearchRestaurantsAPI200ResponseRestaurantsInner n =
  SearchRestaurantsAPI200ResponseRestaurantsInner
    <$> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerOffersThirdPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddress :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerAddress
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerSupportsUpcCodes :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerIsOpen :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerWeightedRatingValue :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerOffersFirstPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAggregatedRatingCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerPickupEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerCuisines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerMiles :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerDollarSigns :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerDeliveryEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerPhoneNumber :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHours :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
  
instance Arbitrary SearchRestaurantsAPI200ResponseRestaurantsInnerAddress where
  arbitrary = sized genSearchRestaurantsAPI200ResponseRestaurantsInnerAddress

genSearchRestaurantsAPI200ResponseRestaurantsInnerAddress :: Int -> Gen SearchRestaurantsAPI200ResponseRestaurantsInnerAddress
genSearchRestaurantsAPI200ResponseRestaurantsInnerAddress n =
  SearchRestaurantsAPI200ResponseRestaurantsInnerAddress
    <$> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressZipcode :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressLatitude :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressLon :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressStreetAddr2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressState :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressStreetAddr :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressLat :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerAddressLongitude :: Maybe Double
  
instance Arbitrary SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours where
  arbitrary = sized genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours

genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours :: Int -> Gen SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours n =
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
    <$> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursDelivery :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursPickup :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursDineIn :: Maybe SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
  
instance Arbitrary SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational where
  arbitrary = sized genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational

genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational :: Int -> Gen SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
genSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational n =
  SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
    <$> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalSunday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalSaturday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalTuesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalThursday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalFriday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalWednesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperationalMonday :: Maybe Text
  
instance Arbitrary SearchRoyaltyFreeImagesAPI200Response where
  arbitrary = sized genSearchRoyaltyFreeImagesAPI200Response

genSearchRoyaltyFreeImagesAPI200Response :: Int -> Gen SearchRoyaltyFreeImagesAPI200Response
genSearchRoyaltyFreeImagesAPI200Response n =
  SearchRoyaltyFreeImagesAPI200Response
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImages :: Maybe [SearchRoyaltyFreeImagesAPI200ResponseImagesInner]
  
instance Arbitrary SearchRoyaltyFreeImagesAPI200ResponseImagesInner where
  arbitrary = sized genSearchRoyaltyFreeImagesAPI200ResponseImagesInner

genSearchRoyaltyFreeImagesAPI200ResponseImagesInner :: Int -> Gen SearchRoyaltyFreeImagesAPI200ResponseImagesInner
genSearchRoyaltyFreeImagesAPI200ResponseImagesInner n =
  SearchRoyaltyFreeImagesAPI200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense :: Maybe SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerThumbnail :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense where
  arbitrary = sized genSearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense

genSearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense :: Int -> Gen SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
genSearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense n =
  SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicenseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicenseLink :: Maybe Text
  
instance Arbitrary SearchWebAPI200Response where
  arbitrary = sized genSearchWebAPI200Response

genSearchWebAPI200Response :: Int -> Gen SearchWebAPI200Response
genSearchWebAPI200Response n =
  SearchWebAPI200Response
    <$> arbitraryReducedMaybe n -- searchWebAPI200ResponseResults :: Maybe [SearchWebAPI200ResponseResultsInner]
  
instance Arbitrary SearchWebAPI200ResponseResultsInner where
  arbitrary = sized genSearchWebAPI200ResponseResultsInner

genSearchWebAPI200ResponseResultsInner :: Int -> Gen SearchWebAPI200ResponseResultsInner
genSearchWebAPI200ResponseResultsInner n =
  SearchWebAPI200ResponseResultsInner
    <$> arbitraryReducedMaybe n -- searchWebAPI200ResponseResultsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchWebAPI200ResponseResultsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchWebAPI200ResponseResultsInnerUrl :: Maybe Text
  
instance Arbitrary SingularizeWordAPI200Response where
  arbitrary = sized genSingularizeWordAPI200Response

genSingularizeWordAPI200Response :: Int -> Gen SingularizeWordAPI200Response
genSingularizeWordAPI200Response n =
  SingularizeWordAPI200Response
    <$> arbitraryReducedMaybe n -- singularizeWordAPI200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- singularizeWordAPI200ResponseSingular :: Maybe Text
  
instance Arbitrary StemTextAPI200Response where
  arbitrary = sized genStemTextAPI200Response

genStemTextAPI200Response :: Int -> Gen StemTextAPI200Response
genStemTextAPI200Response n =
  StemTextAPI200Response
    <$> arbitraryReducedMaybe n -- stemTextAPI200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- stemTextAPI200ResponseStemmed :: Maybe Text
  
instance Arbitrary StoreKeyValueGETAPI200Response where
  arbitrary = sized genStoreKeyValueGETAPI200Response

genStoreKeyValueGETAPI200Response :: Int -> Gen StoreKeyValueGETAPI200Response
genStoreKeyValueGETAPI200Response n =
  StoreKeyValueGETAPI200Response
    <$> arbitraryReducedMaybe n -- storeKeyValueGETAPI200ResponseStatus :: Maybe Text
  
instance Arbitrary TagPartOfSpeechAPI200Response where
  arbitrary = sized genTagPartOfSpeechAPI200Response

genTagPartOfSpeechAPI200Response :: Int -> Gen TagPartOfSpeechAPI200Response
genTagPartOfSpeechAPI200Response n =
  TagPartOfSpeechAPI200Response
    <$> arbitraryReducedMaybe n -- tagPartOfSpeechAPI200ResponseTaggedText :: Maybe Text
  
instance Arbitrary TopNewsAPI200Response where
  arbitrary = sized genTopNewsAPI200Response

genTopNewsAPI200Response :: Int -> Gen TopNewsAPI200Response
genTopNewsAPI200Response n =
  TopNewsAPI200Response
    <$> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNews :: Maybe [TopNewsAPI200ResponseTopNewsInner]
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseCountry :: Maybe Text
  
instance Arbitrary TopNewsAPI200ResponseTopNewsInner where
  arbitrary = sized genTopNewsAPI200ResponseTopNewsInner

genTopNewsAPI200ResponseTopNewsInner :: Int -> Gen TopNewsAPI200ResponseTopNewsInner
genTopNewsAPI200ResponseTopNewsInner n =
  TopNewsAPI200ResponseTopNewsInner
    <$> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNews :: Maybe [TopNewsAPI200ResponseTopNewsInnerNewsInner]
  
instance Arbitrary TopNewsAPI200ResponseTopNewsInnerNewsInner where
  arbitrary = sized genTopNewsAPI200ResponseTopNewsInnerNewsInner

genTopNewsAPI200ResponseTopNewsInnerNewsInner :: Int -> Gen TopNewsAPI200ResponseTopNewsInnerNewsInner
genTopNewsAPI200ResponseTopNewsInnerNewsInner n =
  TopNewsAPI200ResponseTopNewsInnerNewsInner
    <$> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNewsAPI200ResponseTopNewsInnerNewsInnerAuthors :: Maybe [Text]
  
instance Arbitrary VectorSearchAPI200Response where
  arbitrary = sized genVectorSearchAPI200Response

genVectorSearchAPI200Response :: Int -> Gen VectorSearchAPI200Response
genVectorSearchAPI200Response n =
  VectorSearchAPI200Response
    <$> arbitraryReducedMaybe n -- vectorSearchAPI200ResponseVectors :: Maybe [VectorSearchAPI200ResponseVectorsInner]
  
instance Arbitrary VectorSearchAPI200ResponseVectorsInner where
  arbitrary = sized genVectorSearchAPI200ResponseVectorsInner

genVectorSearchAPI200ResponseVectorsInner :: Int -> Gen VectorSearchAPI200ResponseVectorsInner
genVectorSearchAPI200ResponseVectorsInner n =
  VectorSearchAPI200ResponseVectorsInner
    <$> arbitraryReducedMaybe n -- vectorSearchAPI200ResponseVectorsInnerLicense :: Maybe Text
    <*> arbitraryReducedMaybe n -- vectorSearchAPI200ResponseVectorsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- vectorSearchAPI200ResponseVectorsInnerAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- vectorSearchAPI200ResponseVectorsInnerImageUrl :: Maybe Text
  
instance Arbitrary VerifyEmailAddressAPI200Response where
  arbitrary = sized genVerifyEmailAddressAPI200Response

genVerifyEmailAddressAPI200Response :: Int -> Gen VerifyEmailAddressAPI200Response
genVerifyEmailAddressAPI200Response n =
  VerifyEmailAddressAPI200Response
    <$> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseMiddleName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseLastName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseDisposable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseAcceptAll :: Maybe Bool
    <*> arbitraryReducedMaybe n -- verifyEmailAddressAPI200ResponseFreeProvider :: Maybe Bool
  



