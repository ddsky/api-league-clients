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
    <*> arbitraryReducedMaybe n -- extractNews200ResponseImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponsePublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- extractNews200ResponseSentiment :: Maybe Double
  
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
    <$> arbitraryReducedMaybe n -- findSimilarBooks200ResponseSimilarBooks :: Maybe [SearchBooks200ResponseBooksInner]
  
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
  
instance Arbitrary PartOfSpeechTagging200Response where
  arbitrary = sized genPartOfSpeechTagging200Response

genPartOfSpeechTagging200Response :: Int -> Gen PartOfSpeechTagging200Response
genPartOfSpeechTagging200Response n =
  PartOfSpeechTagging200Response
    <$> arbitraryReducedMaybe n -- partOfSpeechTagging200ResponseTaggedText :: Maybe Text
  
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
    <$> arbitraryReducedMaybe n -- searchBooks200ResponseAvailable :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooks :: Maybe [SearchBooks200ResponseBooksInner]
  
instance Arbitrary SearchBooks200ResponseBooksInner where
  arbitrary = sized genSearchBooks200ResponseBooksInner

genSearchBooks200ResponseBooksInner :: Int -> Gen SearchBooks200ResponseBooksInner
genSearchBooks200ResponseBooksInner n =
  SearchBooks200ResponseBooksInner
    <$> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchBooks200ResponseBooksInnerId :: Maybe Int
  
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
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerId :: Maybe Int
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerText :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- searchNews200ResponseNewsInnerAuthors :: Maybe [Text]
  
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
  
instance Arbitrary StoreKeyValueGET200Response where
  arbitrary = sized genStoreKeyValueGET200Response

genStoreKeyValueGET200Response :: Int -> Gen StoreKeyValueGET200Response
genStoreKeyValueGET200Response n =
  StoreKeyValueGET200Response
    <$> arbitraryReducedMaybe n -- storeKeyValueGET200ResponseStatus :: Maybe Text
  
instance Arbitrary TextStemming200Response where
  arbitrary = sized genTextStemming200Response

genTextStemming200Response :: Int -> Gen TextStemming200Response
genTextStemming200Response n =
  TextStemming200Response
    <$> arbitraryReducedMaybe n -- textStemming200ResponseOriginal :: Maybe Text
    <*> arbitraryReducedMaybe n -- textStemming200ResponseStemmed :: Maybe Text
  



