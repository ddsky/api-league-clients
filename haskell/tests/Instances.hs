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

instance Arbitrary ComputeNutrition200Response where
  arbitrary = sized genComputeNutrition200Response

genComputeNutrition200Response :: Int -> Gen ComputeNutrition200Response
genComputeNutrition200Response n =
  ComputeNutrition200Response
    <$> arbitraryReducedMaybe n -- computeNutrition200ResponseNutrients :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseProperties :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseFlavonoids :: Maybe [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdown :: Maybe [ComputeNutrition200ResponseIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseCaloricBreakdown :: Maybe SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseWeightPerServing :: Maybe SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
  
instance Arbitrary ComputeNutrition200ResponseIngredientBreakdownInner where
  arbitrary = sized genComputeNutrition200ResponseIngredientBreakdownInner

genComputeNutrition200ResponseIngredientBreakdownInner :: Int -> Gen ComputeNutrition200ResponseIngredientBreakdownInner
genComputeNutrition200ResponseIngredientBreakdownInner n =
  ComputeNutrition200ResponseIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerNutrients :: Maybe [ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner]
  
instance Arbitrary ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner where
  arbitrary = sized genComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner

genComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner :: Int -> Gen ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
genComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner n =
  ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
    <$> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerPercentOfDailyNeeds :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- computeNutrition200ResponseIngredientBreakdownInnerNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary ConvertUnits200Response where
  arbitrary = sized genConvertUnits200Response

genConvertUnits200Response :: Int -> Gen ConvertUnits200Response
genConvertUnits200Response n =
  ConvertUnits200Response
    <$> arbitraryReducedMaybe n -- convertUnits200ResponseTargetAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- convertUnits200ResponseTargetUnit :: Maybe Text
  
instance Arbitrary CorrectSpelling200Response where
  arbitrary = sized genCorrectSpelling200Response

genCorrectSpelling200Response :: Int -> Gen CorrectSpelling200Response
genCorrectSpelling200Response n =
  CorrectSpelling200Response
    <$> arbitraryReducedMaybe n -- correctSpelling200ResponseCorrectedText :: Maybe Text
  
instance Arbitrary DetectGenderByName200Response where
  arbitrary = sized genDetectGenderByName200Response

genDetectGenderByName200Response :: Int -> Gen DetectGenderByName200Response
genDetectGenderByName200Response n =
  DetectGenderByName200Response
    <$> arbitraryReducedMaybe n -- detectGenderByName200ResponseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectGenderByName200ResponseProbabilityMale :: Maybe Double
  
instance Arbitrary DetectLanguage200ResponseInner where
  arbitrary = sized genDetectLanguage200ResponseInner

genDetectLanguage200ResponseInner :: Int -> Gen DetectLanguage200ResponseInner
genDetectLanguage200ResponseInner n =
  DetectLanguage200ResponseInner
    <$> arbitraryReducedMaybe n -- detectLanguage200ResponseInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectLanguage200ResponseInnerConfidence :: Maybe Double
  
instance Arbitrary DetectMainImageColor200ResponseInner where
  arbitrary = sized genDetectMainImageColor200ResponseInner

genDetectMainImageColor200ResponseInner :: Int -> Gen DetectMainImageColor200ResponseInner
genDetectMainImageColor200ResponseInner n =
  DetectMainImageColor200ResponseInner
    <$> arbitraryReducedMaybe n -- detectMainImageColor200ResponseInnerSpecificColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectMainImageColor200ResponseInnerMainColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectMainImageColor200ResponseInnerHexCode :: Maybe Text
  
instance Arbitrary DetectSentiment200Response where
  arbitrary = sized genDetectSentiment200Response

genDetectSentiment200Response :: Int -> Gen DetectSentiment200Response
genDetectSentiment200Response n =
  DetectSentiment200Response
    <$> arbitraryReducedMaybe n -- detectSentiment200ResponseDocument :: Maybe DetectSentiment200ResponseDocument
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseSentences :: Maybe [DetectSentiment200ResponseSentencesInner]
  
instance Arbitrary DetectSentiment200ResponseDocument where
  arbitrary = sized genDetectSentiment200ResponseDocument

genDetectSentiment200ResponseDocument :: Int -> Gen DetectSentiment200ResponseDocument
genDetectSentiment200ResponseDocument n =
  DetectSentiment200ResponseDocument
    <$> arbitraryReducedMaybe n -- detectSentiment200ResponseDocumentSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseDocumentConfidence :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseDocumentAverageConfidence :: Maybe Int
  
instance Arbitrary DetectSentiment200ResponseSentencesInner where
  arbitrary = sized genDetectSentiment200ResponseSentencesInner

genDetectSentiment200ResponseSentencesInner :: Int -> Gen DetectSentiment200ResponseSentencesInner
genDetectSentiment200ResponseSentencesInner n =
  DetectSentiment200ResponseSentencesInner
    <$> arbitraryReducedMaybe n -- detectSentiment200ResponseSentencesInnerLength :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseSentencesInnerSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseSentencesInnerOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- detectSentiment200ResponseSentencesInnerConfidence :: Maybe Int
  
instance Arbitrary ExtractAuthors200Response where
  arbitrary = sized genExtractAuthors200Response

genExtractAuthors200Response :: Int -> Gen ExtractAuthors200Response
genExtractAuthors200Response n =
  ExtractAuthors200Response
    <$> arbitraryReducedMaybe n -- extractAuthors200ResponseAuthors :: Maybe [ExtractAuthors200ResponseAuthorsInner]
  
instance Arbitrary ExtractAuthors200ResponseAuthorsInner where
  arbitrary = sized genExtractAuthors200ResponseAuthorsInner

genExtractAuthors200ResponseAuthorsInner :: Int -> Gen ExtractAuthors200ResponseAuthorsInner
genExtractAuthors200ResponseAuthorsInner n =
  ExtractAuthors200ResponseAuthorsInner
    <$> arbitraryReducedMaybe n -- extractAuthors200ResponseAuthorsInnerLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractAuthors200ResponseAuthorsInnerName :: Maybe Text
  
instance Arbitrary ExtractContentFromAWebPage200Response where
  arbitrary = sized genExtractContentFromAWebPage200Response

genExtractContentFromAWebPage200Response :: Int -> Gen ExtractContentFromAWebPage200Response
genExtractContentFromAWebPage200Response n =
  ExtractContentFromAWebPage200Response
    <$> arbitraryReducedMaybe n -- extractContentFromAWebPage200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPage200ResponseMainText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPage200ResponseMainHtml :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractContentFromAWebPage200ResponseImages :: Maybe [Text]
  
instance Arbitrary ExtractDates200Response where
  arbitrary = sized genExtractDates200Response

genExtractDates200Response :: Int -> Gen ExtractDates200Response
genExtractDates200Response n =
  ExtractDates200Response
    <$> arbitraryReducedMaybe n -- extractDates200ResponseDates :: Maybe [ExtractDates200ResponseDatesInner]
  
instance Arbitrary ExtractDates200ResponseDatesInner where
  arbitrary = sized genExtractDates200ResponseDatesInner

genExtractDates200ResponseDatesInner :: Int -> Gen ExtractDates200ResponseDatesInner
genExtractDates200ResponseDatesInner n =
  ExtractDates200ResponseDatesInner
    <$> arbitraryReducedMaybe n -- extractDates200ResponseDatesInnerStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractDates200ResponseDatesInnerDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractDates200ResponseDatesInnerNormalizedDate :: Maybe Double
    <*> arbitraryReducedMaybe n -- extractDates200ResponseDatesInnerTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractDates200ResponseDatesInnerEndPosition :: Maybe Int
  
instance Arbitrary ExtractEntities200Response where
  arbitrary = sized genExtractEntities200Response

genExtractEntities200Response :: Int -> Gen ExtractEntities200Response
genExtractEntities200Response n =
  ExtractEntities200Response
    <$> arbitraryReducedMaybe n -- extractEntities200ResponseEntities :: Maybe [ExtractEntities200ResponseEntitiesInner]
  
instance Arbitrary ExtractEntities200ResponseEntitiesInner where
  arbitrary = sized genExtractEntities200ResponseEntitiesInner

genExtractEntities200ResponseEntitiesInner :: Int -> Gen ExtractEntities200ResponseEntitiesInner
genExtractEntities200ResponseEntitiesInner n =
  ExtractEntities200ResponseEntitiesInner
    <$> arbitraryReducedMaybe n -- extractEntities200ResponseEntitiesInnerStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractEntities200ResponseEntitiesInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntities200ResponseEntitiesInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntities200ResponseEntitiesInnerValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractEntities200ResponseEntitiesInnerEndPosition :: Maybe Int
  
instance Arbitrary ExtractNews200Response where
  arbitrary = sized genExtractNews200Response

genExtractNews200Response :: Int -> Gen ExtractNews200Response
genExtractNews200Response n =
  ExtractNews200Response
    <$> arbitraryReducedMaybe n -- extractNews200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseText :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImages :: Maybe [ExtractNews200ResponseImagesInner]
    <*> arbitraryReducedMaybe n -- extractNews200ResponseVideos :: Maybe [ExtractNews200ResponseVideosInner]
    <*> arbitraryReducedMaybe n -- extractNews200ResponsePublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseAuthors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- extractNews200ResponseLanguage :: Maybe Text
  
instance Arbitrary ExtractNews200ResponseImagesInner where
  arbitrary = sized genExtractNews200ResponseImagesInner

genExtractNews200ResponseImagesInner :: Int -> Gen ExtractNews200ResponseImagesInner
genExtractNews200ResponseImagesInner n =
  ExtractNews200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- extractNews200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImagesInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary ExtractNews200ResponseVideosInner where
  arbitrary = sized genExtractNews200ResponseVideosInner

genExtractNews200ResponseVideosInner :: Int -> Gen ExtractNews200ResponseVideosInner
genExtractNews200ResponseVideosInner n =
  ExtractNews200ResponseVideosInner
    <$> arbitraryReducedMaybe n -- extractNews200ResponseVideosInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseVideosInnerDuration :: Maybe Int
    <*> arbitraryReducedMaybe n -- extractNews200ResponseVideosInnerThumbnail :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseVideosInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseVideosInnerUrl :: Maybe Text
  
instance Arbitrary ExtractPublishDate200Response where
  arbitrary = sized genExtractPublishDate200Response

genExtractPublishDate200Response :: Int -> Gen ExtractPublishDate200Response
genExtractPublishDate200Response n =
  ExtractPublishDate200Response
    <$> arbitraryReducedMaybe n -- extractPublishDate200ResponsePublishDate :: Maybe Text
  
instance Arbitrary FindSimilarBooks200Response where
  arbitrary = sized genFindSimilarBooks200Response

genFindSimilarBooks200Response :: Int -> Gen FindSimilarBooks200Response
genFindSimilarBooks200Response n =
  FindSimilarBooks200Response
    <$> arbitraryReducedMaybe n -- findSimilarBooks200ResponseSimilarBooks :: Maybe [SearchBooks200ResponseBooksInnerInner]
  
instance Arbitrary GenerateNonsenseWord200Response where
  arbitrary = sized genGenerateNonsenseWord200Response

genGenerateNonsenseWord200Response :: Int -> Gen GenerateNonsenseWord200Response
genGenerateNonsenseWord200Response n =
  GenerateNonsenseWord200Response
    <$> arbitraryReducedMaybe n -- generateNonsenseWord200ResponseWord :: Maybe Text
    <*> arbitraryReducedMaybe n -- generateNonsenseWord200ResponseRating :: Maybe Double
  
instance Arbitrary ListWordSynonyms200Response where
  arbitrary = sized genListWordSynonyms200Response

genListWordSynonyms200Response :: Int -> Gen ListWordSynonyms200Response
genListWordSynonyms200Response n =
  ListWordSynonyms200Response
    <$> arbitraryReducedMaybe n -- listWordSynonyms200ResponseSynonyms :: Maybe [Text]
  
instance Arbitrary PluralizeWord200Response where
  arbitrary = sized genPluralizeWord200Response

genPluralizeWord200Response :: Int -> Gen PluralizeWord200Response
genPluralizeWord200Response n =
  PluralizeWord200Response
    <$> arbitraryReducedMaybe n -- pluralizeWord200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- pluralizeWord200ResponsePlural :: Maybe Text
  
instance Arbitrary RandomMeme200Response where
  arbitrary = sized genRandomMeme200Response

genRandomMeme200Response :: Int -> Gen RandomMeme200Response
genRandomMeme200Response n =
  RandomMeme200Response
    <$> arbitraryReducedMaybe n -- randomMeme200ResponseDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMeme200ResponseUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMeme200ResponseType :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomMeme200ResponseWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- randomMeme200ResponseHeight :: Maybe Int
    <*> arbitraryReducedMaybe n -- randomMeme200ResponseRatio :: Maybe Double
  
instance Arbitrary RandomPoem200Response where
  arbitrary = sized genRandomPoem200Response

genRandomPoem200Response :: Int -> Gen RandomPoem200Response
genRandomPoem200Response n =
  RandomPoem200Response
    <$> arbitraryReducedMaybe n -- randomPoem200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomPoem200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomPoem200ResponsePoem :: Maybe Text
  
instance Arbitrary RandomQuote200Response where
  arbitrary = sized genRandomQuote200Response

genRandomQuote200Response :: Int -> Gen RandomQuote200Response
genRandomQuote200Response n =
  RandomQuote200Response
    <$> arbitraryReducedMaybe n -- randomQuote200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomQuote200ResponseQuote :: Maybe Text
  
instance Arbitrary RandomRiddle200Response where
  arbitrary = sized genRandomRiddle200Response

genRandomRiddle200Response :: Int -> Gen RandomRiddle200Response
genRandomRiddle200Response n =
  RandomRiddle200Response
    <$> arbitraryReducedMaybe n -- randomRiddle200ResponseRiddle :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomRiddle200ResponseAnswer :: Maybe Text
    <*> arbitraryReducedMaybe n -- randomRiddle200ResponseDifficulty :: Maybe Text
  
instance Arbitrary RandomTrivia200Response where
  arbitrary = sized genRandomTrivia200Response

genRandomTrivia200Response :: Int -> Gen RandomTrivia200Response
genRandomTrivia200Response n =
  RandomTrivia200Response
    <$> arbitraryReducedMaybe n -- randomTrivia200ResponseTrivia :: Maybe Text
  
instance Arbitrary ReadKeyValueFromStore200Response where
  arbitrary = sized genReadKeyValueFromStore200Response

genReadKeyValueFromStore200Response :: Int -> Gen ReadKeyValueFromStore200Response
genReadKeyValueFromStore200Response n =
  ReadKeyValueFromStore200Response
    <$> arbitraryReducedMaybe n -- readKeyValueFromStore200ResponseValue :: Maybe Text
  
instance Arbitrary RetrievePageRank200Response where
  arbitrary = sized genRetrievePageRank200Response

genRetrievePageRank200Response :: Int -> Gen RetrievePageRank200Response
genRetrievePageRank200Response n =
  RetrievePageRank200Response
    <$> arbitraryReducedMaybe n -- retrievePageRank200ResponsePageRank :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrievePageRank200ResponsePosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrievePageRank200ResponsePercentile :: Maybe Double
  
instance Arbitrary RetrieveRecipeInformation200Response where
  arbitrary = sized genRetrieveRecipeInformation200Response

genRetrieveRecipeInformation200Response :: Int -> Gen RetrieveRecipeInformation200Response
genRetrieveRecipeInformation200Response n =
  RetrieveRecipeInformation200Response
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseServings :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryProperties :: Maybe RetrieveRecipeInformation200ResponseDietaryProperties
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponsePricePerServing :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTimes :: Maybe RetrieveRecipeInformation200ResponseTimes
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutrition :: Maybe RetrieveRecipeInformation200ResponseNutrition
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTaste :: Maybe RetrieveRecipeInformation200ResponseTaste
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCuisines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseMealTypes :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseOccasions :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredients :: Maybe [RetrieveRecipeInformation200ResponseIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructions :: Maybe [RetrieveRecipeInformation200ResponseInstructionsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCredits :: Maybe RetrieveRecipeInformation200ResponseCredits
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseScores :: Maybe RetrieveRecipeInformation200ResponseScores
  
instance Arbitrary RetrieveRecipeInformation200ResponseCredits where
  arbitrary = sized genRetrieveRecipeInformation200ResponseCredits

genRetrieveRecipeInformation200ResponseCredits :: Int -> Gen RetrieveRecipeInformation200ResponseCredits
genRetrieveRecipeInformation200ResponseCredits n =
  RetrieveRecipeInformation200ResponseCredits
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCreditsLicense :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCreditsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCreditsSourceName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseCreditsSourceUrl :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformation200ResponseDietaryProperties where
  arbitrary = sized genRetrieveRecipeInformation200ResponseDietaryProperties

genRetrieveRecipeInformation200ResponseDietaryProperties :: Int -> Gen RetrieveRecipeInformation200ResponseDietaryProperties
genRetrieveRecipeInformation200ResponseDietaryProperties n =
  RetrieveRecipeInformation200ResponseDietaryProperties
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesLowFodmap :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesVegetarian :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesVegan :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesGlutenFree :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesDairyFree :: Maybe Bool
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesGaps :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseDietaryPropertiesDiets :: Maybe [Text]
  
instance Arbitrary RetrieveRecipeInformation200ResponseIngredientsInner where
  arbitrary = sized genRetrieveRecipeInformation200ResponseIngredientsInner

genRetrieveRecipeInformation200ResponseIngredientsInner :: Int -> Gen RetrieveRecipeInformation200ResponseIngredientsInner
genRetrieveRecipeInformation200ResponseIngredientsInner n =
  RetrieveRecipeInformation200ResponseIngredientsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerNameClean :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerMeasures :: Maybe RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerMeta :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerOriginalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerAisle :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerConsistency :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformation200ResponseIngredientsInnerMeasures where
  arbitrary = sized genRetrieveRecipeInformation200ResponseIngredientsInnerMeasures

genRetrieveRecipeInformation200ResponseIngredientsInnerMeasures :: Int -> Gen RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
genRetrieveRecipeInformation200ResponseIngredientsInnerMeasures n =
  RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric :: Maybe SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseIngredientsInnerMeasuresUs :: Maybe SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
  
instance Arbitrary RetrieveRecipeInformation200ResponseInstructionsInner where
  arbitrary = sized genRetrieveRecipeInformation200ResponseInstructionsInner

genRetrieveRecipeInformation200ResponseInstructionsInner :: Int -> Gen RetrieveRecipeInformation200ResponseInstructionsInner
genRetrieveRecipeInformation200ResponseInstructionsInner n =
  RetrieveRecipeInformation200ResponseInstructionsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerSteps :: Maybe [RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner]
  
instance Arbitrary RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner where
  arbitrary = sized genRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner

genRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner :: Int -> Gen RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
genRetrieveRecipeInformation200ResponseInstructionsInnerStepsInner n =
  RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerStepsInnerNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredients :: Maybe [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerStepsInnerEquipment :: Maybe [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseInstructionsInnerStepsInnerStep :: Maybe Text
  
instance Arbitrary RetrieveRecipeInformation200ResponseNutrition where
  arbitrary = sized genRetrieveRecipeInformation200ResponseNutrition

genRetrieveRecipeInformation200ResponseNutrition :: Int -> Gen RetrieveRecipeInformation200ResponseNutrition
genRetrieveRecipeInformation200ResponseNutrition n =
  RetrieveRecipeInformation200ResponseNutrition
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionWeightPerServing :: Maybe SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionCaloricBreakdown :: Maybe SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionFlavonoids :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdown :: Maybe [RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionProperties :: Maybe [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionNutrients :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner where
  arbitrary = sized genRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner

genRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner :: Int -> Gen RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
genRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner n =
  RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrients :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary RetrieveRecipeInformation200ResponseScores where
  arbitrary = sized genRetrieveRecipeInformation200ResponseScores

genRetrieveRecipeInformation200ResponseScores :: Int -> Gen RetrieveRecipeInformation200ResponseScores
genRetrieveRecipeInformation200ResponseScores n =
  RetrieveRecipeInformation200ResponseScores
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseScoresMetaScore :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseScoresWeightWatcherSmartPoints :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseScoresHealthScore :: Maybe Int
  
instance Arbitrary RetrieveRecipeInformation200ResponseTaste where
  arbitrary = sized genRetrieveRecipeInformation200ResponseTaste

genRetrieveRecipeInformation200ResponseTaste :: Int -> Gen RetrieveRecipeInformation200ResponseTaste
genRetrieveRecipeInformation200ResponseTaste n =
  RetrieveRecipeInformation200ResponseTaste
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteFattiness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteSpiciness :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteSaltiness :: Maybe Int
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteBitterness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteSavoriness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteSweetness :: Maybe Double
    <*> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTasteSourness :: Maybe Double
  
instance Arbitrary RetrieveRecipeInformation200ResponseTimes where
  arbitrary = sized genRetrieveRecipeInformation200ResponseTimes

genRetrieveRecipeInformation200ResponseTimes :: Int -> Gen RetrieveRecipeInformation200ResponseTimes
genRetrieveRecipeInformation200ResponseTimes n =
  RetrieveRecipeInformation200ResponseTimes
    <$> arbitraryReducedMaybe n -- retrieveRecipeInformation200ResponseTimesTotalMinutes :: Maybe Int
  
instance Arbitrary ScoreReadability200Response where
  arbitrary = sized genScoreReadability200Response

genScoreReadability200Response :: Int -> Gen ScoreReadability200Response
genScoreReadability200Response n =
  ScoreReadability200Response
    <$> arbitraryReducedMaybe n -- scoreReadability200ResponseReadability :: Maybe ScoreText200ResponseReadability
  
instance Arbitrary ScoreText200Response where
  arbitrary = sized genScoreText200Response

genScoreText200Response :: Int -> Gen ScoreText200Response
genScoreText200Response n =
  ScoreText200Response
    <$> arbitraryReducedMaybe n -- scoreText200ResponseNumberOfWords :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreText200ResponseNumberOfSentences :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadability :: Maybe ScoreText200ResponseReadability
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmability :: Maybe ScoreText200ResponseSkimmability
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingness :: Maybe ScoreText200ResponseInterestingness
    <*> arbitraryReducedMaybe n -- scoreText200ResponseStyle :: Maybe ScoreText200ResponseStyle
    <*> arbitraryReducedMaybe n -- scoreText200ResponseTotalScore :: Maybe Double
  
instance Arbitrary ScoreText200ResponseInterestingness where
  arbitrary = sized genScoreText200ResponseInterestingness

genScoreText200ResponseInterestingness :: Int -> Gen ScoreText200ResponseInterestingness
genScoreText200ResponseInterestingness n =
  ScoreText200ResponseInterestingness
    <$> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessMainscores :: Maybe ScoreText200ResponseSkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscores :: Maybe ScoreText200ResponseInterestingnessSubscores
  
instance Arbitrary ScoreText200ResponseInterestingnessSubscores where
  arbitrary = sized genScoreText200ResponseInterestingnessSubscores

genScoreText200ResponseInterestingnessSubscores :: Int -> Gen ScoreText200ResponseInterestingnessSubscores
genScoreText200ResponseInterestingnessSubscores n =
  ScoreText200ResponseInterestingnessSubscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscoresTitleRatingScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscoresQuoteScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscoresLengthScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscoresLinkScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseInterestingnessSubscoresGoogleHitsScore :: Maybe [Int]
  
instance Arbitrary ScoreText200ResponseReadability where
  arbitrary = sized genScoreText200ResponseReadability

genScoreText200ResponseReadability :: Int -> Gen ScoreText200ResponseReadability
genScoreText200ResponseReadability n =
  ScoreText200ResponseReadability
    <$> arbitraryReducedMaybe n -- scoreText200ResponseReadabilityMainscores :: Maybe ScoreText200ResponseReadabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscores :: Maybe ScoreText200ResponseReadabilitySubscores
  
instance Arbitrary ScoreText200ResponseReadabilityMainscores where
  arbitrary = sized genScoreText200ResponseReadabilityMainscores

genScoreText200ResponseReadabilityMainscores :: Int -> Gen ScoreText200ResponseReadabilityMainscores
genScoreText200ResponseReadabilityMainscores n =
  ScoreText200ResponseReadabilityMainscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseReadabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilityMainscoresTotal :: Maybe Int
  
instance Arbitrary ScoreText200ResponseReadabilitySubscores where
  arbitrary = sized genScoreText200ResponseReadabilitySubscores

genScoreText200ResponseReadabilitySubscores :: Int -> Gen ScoreText200ResponseReadabilitySubscores
genScoreText200ResponseReadabilitySubscores n =
  ScoreText200ResponseReadabilitySubscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresReadingTimeSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresForcast :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresFlesch :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresSmog :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresAri :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresLix :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresColemanLiau :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresKincaid :: Maybe Double
    <*> arbitraryReducedMaybe n -- scoreText200ResponseReadabilitySubscoresFog :: Maybe Double
  
instance Arbitrary ScoreText200ResponseSkimmability where
  arbitrary = sized genScoreText200ResponseSkimmability

genScoreText200ResponseSkimmability :: Int -> Gen ScoreText200ResponseSkimmability
genScoreText200ResponseSkimmability n =
  ScoreText200ResponseSkimmability
    <$> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilityMainscores :: Maybe ScoreText200ResponseSkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscores :: Maybe ScoreText200ResponseSkimmabilitySubscores
  
instance Arbitrary ScoreText200ResponseSkimmabilityMainscores where
  arbitrary = sized genScoreText200ResponseSkimmabilityMainscores

genScoreText200ResponseSkimmabilityMainscores :: Int -> Gen ScoreText200ResponseSkimmabilityMainscores
genScoreText200ResponseSkimmabilityMainscores n =
  ScoreText200ResponseSkimmabilityMainscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilityMainscoresTotal :: Maybe Double
  
instance Arbitrary ScoreText200ResponseSkimmabilitySubscores where
  arbitrary = sized genScoreText200ResponseSkimmabilitySubscores

genScoreText200ResponseSkimmabilitySubscores :: Int -> Gen ScoreText200ResponseSkimmabilitySubscores
genScoreText200ResponseSkimmabilitySubscores n =
  ScoreText200ResponseSkimmabilitySubscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresBulletPointRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresImageScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresHighlightedWordRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresVideoScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresParagraphScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseSkimmabilitySubscoresParagraphHeadlineRatioScore :: Maybe [Int]
  
instance Arbitrary ScoreText200ResponseStyle where
  arbitrary = sized genScoreText200ResponseStyle

genScoreText200ResponseStyle :: Int -> Gen ScoreText200ResponseStyle
genScoreText200ResponseStyle n =
  ScoreText200ResponseStyle
    <$> arbitraryReducedMaybe n -- scoreText200ResponseStyleMainscores :: Maybe ScoreText200ResponseReadabilityMainscores
    <*> arbitraryReducedMaybe n -- scoreText200ResponseStyleSubscores :: Maybe ScoreText200ResponseStyleSubscores
  
instance Arbitrary ScoreText200ResponseStyleSubscores where
  arbitrary = sized genScoreText200ResponseStyleSubscores

genScoreText200ResponseStyleSubscores :: Int -> Gen ScoreText200ResponseStyleSubscores
genScoreText200ResponseStyleSubscores n =
  ScoreText200ResponseStyleSubscores
    <$> arbitraryReducedMaybe n -- scoreText200ResponseStyleSubscoresAbbreviationScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseStyleSubscoresStyleScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- scoreText200ResponseStyleSubscoresSpellingScore :: Maybe [Int]
  
instance Arbitrary SearchBooks200Response where
  arbitrary = sized genSearchBooks200Response

genSearchBooks200Response :: Int -> Gen SearchBooks200Response
genSearchBooks200Response n =
  SearchBooks200Response
    <$> arbitraryReducedMaybe n -- searchBooks200ResponseTotalResults :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooks :: Maybe [[SearchBooks200ResponseBooksInnerInner]]
  
instance Arbitrary SearchBooks200ResponseBooksInnerInner where
  arbitrary = sized genSearchBooks200ResponseBooksInnerInner

genSearchBooks200ResponseBooksInnerInner :: Int -> Gen SearchBooks200ResponseBooksInnerInner
genSearchBooks200ResponseBooksInnerInner n =
  SearchBooks200ResponseBooksInnerInner
    <$> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerInnerId :: Maybe Int
  
instance Arbitrary SearchDrinks200Response where
  arbitrary = sized genSearchDrinks200Response

genSearchDrinks200Response :: Int -> Gen SearchDrinks200Response
genSearchDrinks200Response n =
  SearchDrinks200Response
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinks :: Maybe [SearchDrinks200ResponseDrinksInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseTotalResults :: Maybe Int
  
instance Arbitrary SearchDrinks200ResponseDrinksInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInner

genSearchDrinks200ResponseDrinksInner :: Int -> Gen SearchDrinks200ResponseDrinksInner
genSearchDrinks200ResponseDrinksInner n =
  SearchDrinks200ResponseDrinksInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerFlavors :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructions :: Maybe [SearchDrinks200ResponseDrinksInnerInstructionsInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutrition :: Maybe SearchDrinks200ResponseDrinksInnerNutrition
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerGlassType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerCredits :: Maybe SearchDrinks200ResponseDrinksInnerCredits
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerPricePerServing :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredients :: Maybe [SearchDrinks200ResponseDrinksInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerCuisines :: Maybe [Text]
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerCredits where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerCredits

genSearchDrinks200ResponseDrinksInnerCredits :: Int -> Gen SearchDrinks200ResponseDrinksInnerCredits
genSearchDrinks200ResponseDrinksInnerCredits n =
  SearchDrinks200ResponseDrinksInnerCredits
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerCreditsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerCreditsSourceName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerCreditsSourceUrl :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerIngredientsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerIngredientsInner

genSearchDrinks200ResponseDrinksInnerIngredientsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerIngredientsInner
genSearchDrinks200ResponseDrinksInnerIngredientsInner n =
  SearchDrinks200ResponseDrinksInnerIngredientsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerNameClean :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasures :: Maybe SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeta :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerOriginalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerAisle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerConsistency :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures

genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures :: Int -> Gen SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures n =
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric :: Maybe SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs :: Maybe SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric

genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric :: Int -> Gen SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric n =
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetricUnitShort :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetricAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetricUnitLong :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs

genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs :: Int -> Gen SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
genSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs n =
  SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUsUnitShort :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUsAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUsUnitLong :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerInstructionsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerInstructionsInner

genSearchDrinks200ResponseDrinksInnerInstructionsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerInstructionsInner
genSearchDrinks200ResponseDrinksInnerInstructionsInner n =
  SearchDrinks200ResponseDrinksInnerInstructionsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerSteps :: Maybe [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner]
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner

genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner
genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner n =
  SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredients :: Maybe [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerEquipment :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerStep :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner

genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
genSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner n =
  SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInnerId :: Maybe Int
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutrition where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutrition

genSearchDrinks200ResponseDrinksInnerNutrition :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutrition
genSearchDrinks200ResponseDrinksInnerNutrition n =
  SearchDrinks200ResponseDrinksInnerNutrition
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionWeightPerServing :: Maybe SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown :: Maybe SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionFlavonoids :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdown :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionProperties :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionNutrients :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown

genSearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
genSearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown n =
  SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionCaloricBreakdownPercentFat :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionCaloricBreakdownPercentCarbs :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionCaloricBreakdownPercentProtein :: Maybe Double
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner

genSearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner
genSearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner n =
  SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionFlavonoidsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionFlavonoidsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionFlavonoidsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner

genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner
genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner n =
  SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerUnit :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrients :: Maybe [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner]
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner

genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
genSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner n =
  SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerPercentOfDailyNeeds :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner

genSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
genSearchDrinks200ResponseDrinksInnerNutritionNutrientsInner n =
  SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionNutrientsInnerPercentOfDailyNeeds :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionNutrientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing where
  arbitrary = sized genSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing

genSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing :: Int -> Gen SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
genSearchDrinks200ResponseDrinksInnerNutritionWeightPerServing n =
  SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
    <$> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionWeightPerServingAmount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchDrinks200ResponseDrinksInnerNutritionWeightPerServingUnit :: Maybe Text
  
instance Arbitrary SearchGifs200Response where
  arbitrary = sized genSearchGifs200Response

genSearchGifs200Response :: Int -> Gen SearchGifs200Response
genSearchGifs200Response n =
  SearchGifs200Response
    <$> arbitraryReducedMaybe n -- searchGifs200ResponseImages :: Maybe [SearchGifs200ResponseImagesInner]
  
instance Arbitrary SearchGifs200ResponseImagesInner where
  arbitrary = sized genSearchGifs200ResponseImagesInner

genSearchGifs200ResponseImagesInner :: Int -> Gen SearchGifs200ResponseImagesInner
genSearchGifs200ResponseImagesInner n =
  SearchGifs200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- searchGifs200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchGifs200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchGifs200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary SearchJokes200Response where
  arbitrary = sized genSearchJokes200Response

genSearchJokes200Response :: Int -> Gen SearchJokes200Response
genSearchJokes200Response n =
  SearchJokes200Response
    <$> arbitraryReducedMaybe n -- searchJokes200ResponseJokes :: Maybe [SearchJokes200ResponseJokesInner]
    <*> arbitraryReducedMaybe n -- searchJokes200ResponseAvailable :: Maybe Int
  
instance Arbitrary SearchJokes200ResponseJokesInner where
  arbitrary = sized genSearchJokes200ResponseJokesInner

genSearchJokes200ResponseJokesInner :: Int -> Gen SearchJokes200ResponseJokesInner
genSearchJokes200ResponseJokesInner n =
  SearchJokes200ResponseJokesInner
    <$> arbitraryReducedMaybe n -- searchJokes200ResponseJokesInnerJoke :: Maybe Text
  
instance Arbitrary SearchMemes200Response where
  arbitrary = sized genSearchMemes200Response

genSearchMemes200Response :: Int -> Gen SearchMemes200Response
genSearchMemes200Response n =
  SearchMemes200Response
    <$> arbitraryReducedMaybe n -- searchMemes200ResponseMemes :: Maybe [SearchMemes200ResponseMemesInner]
    <*> arbitraryReducedMaybe n -- searchMemes200ResponseAvailable :: Maybe Int
  
instance Arbitrary SearchMemes200ResponseMemesInner where
  arbitrary = sized genSearchMemes200ResponseMemesInner

genSearchMemes200ResponseMemesInner :: Int -> Gen SearchMemes200ResponseMemesInner
genSearchMemes200ResponseMemesInner n =
  SearchMemes200ResponseMemesInner
    <$> arbitraryReducedMaybe n -- searchMemes200ResponseMemesInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchMemes200ResponseMemesInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchMemes200ResponseMemesInnerUrl :: Maybe Text
  
instance Arbitrary SearchNews200Response where
  arbitrary = sized genSearchNews200Response

genSearchNews200Response :: Int -> Gen SearchNews200Response
genSearchNews200Response n =
  SearchNews200Response
    <$> arbitraryReducedMaybe n -- searchNews200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNews :: Maybe [SearchNews200ResponseNewsInner]
  
instance Arbitrary SearchNews200ResponseNewsInner where
  arbitrary = sized genSearchNews200ResponseNewsInner

genSearchNews200ResponseNewsInner :: Int -> Gen SearchNews200ResponseNewsInner
genSearchNews200ResponseNewsInner n =
  SearchNews200ResponseNewsInner
    <$> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSentiment :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerVideo :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerCategory :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerAuthors :: Maybe [Text]
  
instance Arbitrary SearchRecipes200Response where
  arbitrary = sized genSearchRecipes200Response

genSearchRecipes200Response :: Int -> Gen SearchRecipes200Response
genSearchRecipes200Response n =
  SearchRecipes200Response
    <$> arbitraryReducedMaybe n -- searchRecipes200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipes :: Maybe [SearchRecipes200ResponseRecipesInner]
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseTotalResults :: Maybe Int
  
instance Arbitrary SearchRecipes200ResponseRecipesInner where
  arbitrary = sized genSearchRecipes200ResponseRecipesInner

genSearchRecipes200ResponseRecipesInner :: Int -> Gen SearchRecipes200ResponseRecipesInner
genSearchRecipes200ResponseRecipesInner n =
  SearchRecipes200ResponseRecipesInner
    <$> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerImages :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerNutrition :: Maybe SearchRecipes200ResponseRecipesInnerNutrition
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerTitle :: Maybe Text
  
instance Arbitrary SearchRecipes200ResponseRecipesInnerNutrition where
  arbitrary = sized genSearchRecipes200ResponseRecipesInnerNutrition

genSearchRecipes200ResponseRecipesInnerNutrition :: Int -> Gen SearchRecipes200ResponseRecipesInnerNutrition
genSearchRecipes200ResponseRecipesInnerNutrition n =
  SearchRecipes200ResponseRecipesInnerNutrition
    <$> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerNutritionNutrients :: Maybe [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]
  
instance Arbitrary SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner where
  arbitrary = sized genSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner

genSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner :: Int -> Gen SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
genSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner n =
  SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
    <$> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerNutritionNutrientsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerNutritionNutrientsInnerAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRecipes200ResponseRecipesInnerNutritionNutrientsInnerUnit :: Maybe Text
  
instance Arbitrary SearchRestaurants200Response where
  arbitrary = sized genSearchRestaurants200Response

genSearchRestaurants200Response :: Int -> Gen SearchRestaurants200Response
genSearchRestaurants200Response n =
  SearchRestaurants200Response
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurants :: Maybe [SearchRestaurants200ResponseRestaurantsInner]
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInner where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInner

genSearchRestaurants200ResponseRestaurantsInner :: Int -> Gen SearchRestaurants200ResponseRestaurantsInner
genSearchRestaurants200ResponseRestaurantsInner n =
  SearchRestaurants200ResponseRestaurantsInner
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerOffersThirdPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddress :: Maybe SearchRestaurants200ResponseRestaurantsInnerAddress
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerSupportsUpcCodes :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerIsOpen :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerWeightedRatingValue :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerType :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerOffersFirstPartyDelivery :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAggregatedRatingCount :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerPickupEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerCuisines :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerMiles :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDollarSigns :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerDeliveryEnabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerPhoneNumber :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHours :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHours
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerAddress where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerAddress

genSearchRestaurants200ResponseRestaurantsInnerAddress :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerAddress
genSearchRestaurants200ResponseRestaurantsInnerAddress n =
  SearchRestaurants200ResponseRestaurantsInnerAddress
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressZipcode :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLatitude :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLon :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressStreetAddr2 :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressState :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressStreetAddr :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLat :: Maybe Double
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerAddressLongitude :: Maybe Double
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerLocalHours where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerLocalHours

genSearchRestaurants200ResponseRestaurantsInnerLocalHours :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerLocalHours
genSearchRestaurants200ResponseRestaurantsInnerLocalHours n =
  SearchRestaurants200ResponseRestaurantsInnerLocalHours
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursDelivery :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursPickup :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursDineIn :: Maybe SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
  
instance Arbitrary SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational where
  arbitrary = sized genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational

genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational :: Int -> Gen SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
genSearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational n =
  SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    <$> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalSunday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalSaturday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalTuesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalThursday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalFriday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalWednesday :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRestaurants200ResponseRestaurantsInnerLocalHoursOperationalMonday :: Maybe Text
  
instance Arbitrary SearchRoyaltyFreeImages200Response where
  arbitrary = sized genSearchRoyaltyFreeImages200Response

genSearchRoyaltyFreeImages200Response :: Int -> Gen SearchRoyaltyFreeImages200Response
genSearchRoyaltyFreeImages200Response n =
  SearchRoyaltyFreeImages200Response
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImages :: Maybe [SearchRoyaltyFreeImages200ResponseImagesInner]
  
instance Arbitrary SearchRoyaltyFreeImages200ResponseImagesInner where
  arbitrary = sized genSearchRoyaltyFreeImages200ResponseImagesInner

genSearchRoyaltyFreeImages200ResponseImagesInner :: Int -> Gen SearchRoyaltyFreeImages200ResponseImagesInner
genSearchRoyaltyFreeImages200ResponseImagesInner n =
  SearchRoyaltyFreeImages200ResponseImagesInner
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerLicense :: Maybe SearchRoyaltyFreeImages200ResponseImagesInnerLicense
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerThumbnail :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerId :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerHeight :: Maybe Int
  
instance Arbitrary SearchRoyaltyFreeImages200ResponseImagesInnerLicense where
  arbitrary = sized genSearchRoyaltyFreeImages200ResponseImagesInnerLicense

genSearchRoyaltyFreeImages200ResponseImagesInnerLicense :: Int -> Gen SearchRoyaltyFreeImages200ResponseImagesInnerLicense
genSearchRoyaltyFreeImages200ResponseImagesInnerLicense n =
  SearchRoyaltyFreeImages200ResponseImagesInnerLicense
    <$> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerLicenseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchRoyaltyFreeImages200ResponseImagesInnerLicenseLink :: Maybe Text
  
instance Arbitrary SearchWeb200Response where
  arbitrary = sized genSearchWeb200Response

genSearchWeb200Response :: Int -> Gen SearchWeb200Response
genSearchWeb200Response n =
  SearchWeb200Response
    <$> arbitraryReducedMaybe n -- searchWeb200ResponseResults :: Maybe [SearchWeb200ResponseResultsInner]
  
instance Arbitrary SearchWeb200ResponseResultsInner where
  arbitrary = sized genSearchWeb200ResponseResultsInner

genSearchWeb200ResponseResultsInner :: Int -> Gen SearchWeb200ResponseResultsInner
genSearchWeb200ResponseResultsInner n =
  SearchWeb200ResponseResultsInner
    <$> arbitraryReducedMaybe n -- searchWeb200ResponseResultsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchWeb200ResponseResultsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchWeb200ResponseResultsInnerUrl :: Maybe Text
  
instance Arbitrary SingularizeWord200Response where
  arbitrary = sized genSingularizeWord200Response

genSingularizeWord200Response :: Int -> Gen SingularizeWord200Response
genSingularizeWord200Response n =
  SingularizeWord200Response
    <$> arbitraryReducedMaybe n -- singularizeWord200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- singularizeWord200ResponseSingular :: Maybe Text
  
instance Arbitrary StemText200Response where
  arbitrary = sized genStemText200Response

genStemText200Response :: Int -> Gen StemText200Response
genStemText200Response n =
  StemText200Response
    <$> arbitraryReducedMaybe n -- stemText200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- stemText200ResponseStemmed :: Maybe Text
  
instance Arbitrary StoreKeyValueGET200Response where
  arbitrary = sized genStoreKeyValueGET200Response

genStoreKeyValueGET200Response :: Int -> Gen StoreKeyValueGET200Response
genStoreKeyValueGET200Response n =
  StoreKeyValueGET200Response
    <$> arbitraryReducedMaybe n -- storeKeyValueGET200ResponseStatus :: Maybe Text
  
instance Arbitrary TagPartOfSpeech200Response where
  arbitrary = sized genTagPartOfSpeech200Response

genTagPartOfSpeech200Response :: Int -> Gen TagPartOfSpeech200Response
genTagPartOfSpeech200Response n =
  TagPartOfSpeech200Response
    <$> arbitraryReducedMaybe n -- tagPartOfSpeech200ResponseTaggedText :: Maybe Text
  
instance Arbitrary TopNews200Response where
  arbitrary = sized genTopNews200Response

genTopNews200Response :: Int -> Gen TopNews200Response
genTopNews200Response n =
  TopNews200Response
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNews :: Maybe [TopNews200ResponseTopNewsInner]
    <*> arbitraryReducedMaybe n -- topNews200ResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseCountry :: Maybe Text
  
instance Arbitrary TopNews200ResponseTopNewsInner where
  arbitrary = sized genTopNews200ResponseTopNewsInner

genTopNews200ResponseTopNewsInner :: Int -> Gen TopNews200ResponseTopNewsInner
genTopNews200ResponseTopNewsInner n =
  TopNews200ResponseTopNewsInner
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNews :: Maybe [TopNews200ResponseTopNewsInnerNewsInner]
  
instance Arbitrary TopNews200ResponseTopNewsInnerNewsInner where
  arbitrary = sized genTopNews200ResponseTopNewsInnerNewsInner

genTopNews200ResponseTopNewsInnerNewsInner :: Int -> Gen TopNews200ResponseTopNewsInnerNewsInner
genTopNews200ResponseTopNewsInnerNewsInner n =
  TopNews200ResponseTopNewsInnerNewsInner
    <$> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- topNews200ResponseTopNewsInnerNewsInnerAuthors :: Maybe [Text]
  
instance Arbitrary VerifyEmailAddress200Response where
  arbitrary = sized genVerifyEmailAddress200Response

genVerifyEmailAddress200Response :: Int -> Gen VerifyEmailAddress200Response
genVerifyEmailAddress200Response n =
  VerifyEmailAddress200Response
    <$> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseDomain :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseMiddleName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseLastName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseUsername :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseDisposable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseAcceptAll :: Maybe Bool
    <*> arbitraryReducedMaybe n -- verifyEmailAddress200ResponseFreeProvider :: Maybe Bool
  



