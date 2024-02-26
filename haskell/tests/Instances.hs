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

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
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

instance Arbitrary InlineResponse200 where
  arbitrary = sized genInlineResponse200

genInlineResponse200 :: Int -> Gen InlineResponse200
genInlineResponse200 n =
  InlineResponse200
    <$> arbitraryReducedMaybe n -- inlineResponse200Available :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse200Number :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse200Offset :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse200Books :: Maybe [InlineResponse200Books]
  
instance Arbitrary InlineResponse2001 where
  arbitrary = sized genInlineResponse2001

genInlineResponse2001 :: Int -> Gen InlineResponse2001
genInlineResponse2001 n =
  InlineResponse2001
    <$> arbitraryReducedMaybe n -- inlineResponse2001SimilarBooks :: Maybe [InlineResponse200Books]
  
instance Arbitrary InlineResponse20010 where
  arbitrary = sized genInlineResponse20010

genInlineResponse20010 :: Int -> Gen InlineResponse20010
genInlineResponse20010 n =
  InlineResponse20010
    <$> arbitraryReducedMaybe n -- inlineResponse20010Author :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20010Quote :: Maybe Text
  
instance Arbitrary InlineResponse20011 where
  arbitrary = sized genInlineResponse20011

genInlineResponse20011 :: Int -> Gen InlineResponse20011
genInlineResponse20011 n =
  InlineResponse20011
    <$> arbitraryReducedMaybe n -- inlineResponse20011Title :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20011Author :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20011Poem :: Maybe Text
  
instance Arbitrary InlineResponse20012 where
  arbitrary = sized genInlineResponse20012

genInlineResponse20012 :: Int -> Gen InlineResponse20012
genInlineResponse20012 n =
  InlineResponse20012
    <$> arbitraryReducedMaybe n -- inlineResponse20012Title :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20012MainText :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20012MainHtml :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20012Images :: Maybe [Text]
  
instance Arbitrary InlineResponse20013 where
  arbitrary = sized genInlineResponse20013

genInlineResponse20013 :: Int -> Gen InlineResponse20013
genInlineResponse20013 n =
  InlineResponse20013
    <$> arbitraryReducedMaybe n -- inlineResponse20013PublishDate :: Maybe Text
  
instance Arbitrary InlineResponse20014 where
  arbitrary = sized genInlineResponse20014

genInlineResponse20014 :: Int -> Gen InlineResponse20014
genInlineResponse20014 n =
  InlineResponse20014
    <$> arbitraryReducedMaybe n -- inlineResponse20014Authors :: Maybe [InlineResponse20014Authors]
  
instance Arbitrary InlineResponse20014Authors where
  arbitrary = sized genInlineResponse20014Authors

genInlineResponse20014Authors :: Int -> Gen InlineResponse20014Authors
genInlineResponse20014Authors n =
  InlineResponse20014Authors
    <$> arbitraryReducedMaybe n -- inlineResponse20014AuthorsLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20014AuthorsName :: Maybe Text
  
instance Arbitrary InlineResponse20015 where
  arbitrary = sized genInlineResponse20015

genInlineResponse20015 :: Int -> Gen InlineResponse20015
genInlineResponse20015 n =
  InlineResponse20015
    <$> arbitraryReducedMaybe n -- inlineResponse20015Results :: Maybe [InlineResponse20015Results]
  
instance Arbitrary InlineResponse20015Results where
  arbitrary = sized genInlineResponse20015Results

genInlineResponse20015Results :: Int -> Gen InlineResponse20015Results
genInlineResponse20015Results n =
  InlineResponse20015Results
    <$> arbitraryReducedMaybe n -- inlineResponse20015ResultsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20015ResultsSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20015ResultsUrl :: Maybe Text
  
instance Arbitrary InlineResponse20016 where
  arbitrary = sized genInlineResponse20016

genInlineResponse20016 :: Int -> Gen InlineResponse20016
genInlineResponse20016 n =
  InlineResponse20016
    <$> arbitraryReducedMaybe n -- inlineResponse20016CorrectedText :: Maybe Text
  
instance Arbitrary InlineResponse20017 where
  arbitrary = sized genInlineResponse20017

genInlineResponse20017 :: Int -> Gen InlineResponse20017
genInlineResponse20017 n =
  InlineResponse20017
    <$> arbitraryReducedMaybe n -- inlineResponse20017Language :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20017Confidence :: Maybe Double
  
instance Arbitrary InlineResponse20018 where
  arbitrary = sized genInlineResponse20018

genInlineResponse20018 :: Int -> Gen InlineResponse20018
genInlineResponse20018 n =
  InlineResponse20018
    <$> arbitraryReducedMaybe n -- inlineResponse20018Document :: Maybe InlineResponse20018Document
    <*> arbitraryReducedMaybe n -- inlineResponse20018Sentences :: Maybe [InlineResponse20018Sentences]
  
instance Arbitrary InlineResponse20018Document where
  arbitrary = sized genInlineResponse20018Document

genInlineResponse20018Document :: Int -> Gen InlineResponse20018Document
genInlineResponse20018Document n =
  InlineResponse20018Document
    <$> arbitraryReducedMaybe n -- inlineResponse20018DocumentSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20018DocumentConfidence :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20018DocumentAverageConfidence :: Maybe Int
  
instance Arbitrary InlineResponse20018Sentences where
  arbitrary = sized genInlineResponse20018Sentences

genInlineResponse20018Sentences :: Int -> Gen InlineResponse20018Sentences
genInlineResponse20018Sentences n =
  InlineResponse20018Sentences
    <$> arbitraryReducedMaybe n -- inlineResponse20018SentencesLength :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20018SentencesSentiment :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20018SentencesOffset :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20018SentencesConfidence :: Maybe Int
  
instance Arbitrary InlineResponse20019 where
  arbitrary = sized genInlineResponse20019

genInlineResponse20019 :: Int -> Gen InlineResponse20019
genInlineResponse20019 n =
  InlineResponse20019
    <$> arbitraryReducedMaybe n -- inlineResponse20019NumberOfWords :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20019NumberOfSentences :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20019Readability :: Maybe InlineResponse20019Readability
    <*> arbitraryReducedMaybe n -- inlineResponse20019Skimmability :: Maybe InlineResponse20019Skimmability
    <*> arbitraryReducedMaybe n -- inlineResponse20019Interestingness :: Maybe InlineResponse20019Interestingness
    <*> arbitraryReducedMaybe n -- inlineResponse20019Style :: Maybe InlineResponse20019Style
    <*> arbitraryReducedMaybe n -- inlineResponse20019TotalScore :: Maybe Double
  
instance Arbitrary InlineResponse20019Interestingness where
  arbitrary = sized genInlineResponse20019Interestingness

genInlineResponse20019Interestingness :: Int -> Gen InlineResponse20019Interestingness
genInlineResponse20019Interestingness n =
  InlineResponse20019Interestingness
    <$> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessMainscores :: Maybe InlineResponse20019SkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscores :: Maybe InlineResponse20019InterestingnessSubscores
  
instance Arbitrary InlineResponse20019InterestingnessSubscores where
  arbitrary = sized genInlineResponse20019InterestingnessSubscores

genInlineResponse20019InterestingnessSubscores :: Int -> Gen InlineResponse20019InterestingnessSubscores
genInlineResponse20019InterestingnessSubscores n =
  InlineResponse20019InterestingnessSubscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscoresTitleRatingScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscoresQuoteScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscoresLengthScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscoresLinkScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019InterestingnessSubscoresGoogleHitsScore :: Maybe [Int]
  
instance Arbitrary InlineResponse20019Readability where
  arbitrary = sized genInlineResponse20019Readability

genInlineResponse20019Readability :: Int -> Gen InlineResponse20019Readability
genInlineResponse20019Readability n =
  InlineResponse20019Readability
    <$> arbitraryReducedMaybe n -- inlineResponse20019ReadabilityMainscores :: Maybe InlineResponse20019ReadabilityMainscores
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscores :: Maybe InlineResponse20019ReadabilitySubscores
  
instance Arbitrary InlineResponse20019ReadabilityMainscores where
  arbitrary = sized genInlineResponse20019ReadabilityMainscores

genInlineResponse20019ReadabilityMainscores :: Int -> Gen InlineResponse20019ReadabilityMainscores
genInlineResponse20019ReadabilityMainscores n =
  InlineResponse20019ReadabilityMainscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019ReadabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilityMainscoresTotal :: Maybe Int
  
instance Arbitrary InlineResponse20019ReadabilitySubscores where
  arbitrary = sized genInlineResponse20019ReadabilitySubscores

genInlineResponse20019ReadabilitySubscores :: Int -> Gen InlineResponse20019ReadabilitySubscores
genInlineResponse20019ReadabilitySubscores n =
  InlineResponse20019ReadabilitySubscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresReadingTimeSeconds :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresForcast :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresFlesch :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresSmog :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresAri :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresLix :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresColemanLiau :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresKincaid :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20019ReadabilitySubscoresFog :: Maybe Double
  
instance Arbitrary InlineResponse20019Skimmability where
  arbitrary = sized genInlineResponse20019Skimmability

genInlineResponse20019Skimmability :: Int -> Gen InlineResponse20019Skimmability
genInlineResponse20019Skimmability n =
  InlineResponse20019Skimmability
    <$> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilityMainscores :: Maybe InlineResponse20019SkimmabilityMainscores
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscores :: Maybe InlineResponse20019SkimmabilitySubscores
  
instance Arbitrary InlineResponse20019SkimmabilityMainscores where
  arbitrary = sized genInlineResponse20019SkimmabilityMainscores

genInlineResponse20019SkimmabilityMainscores :: Int -> Gen InlineResponse20019SkimmabilityMainscores
genInlineResponse20019SkimmabilityMainscores n =
  InlineResponse20019SkimmabilityMainscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilityMainscoresTotalPossible :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilityMainscoresTotal :: Maybe Double
  
instance Arbitrary InlineResponse20019SkimmabilitySubscores where
  arbitrary = sized genInlineResponse20019SkimmabilitySubscores

genInlineResponse20019SkimmabilitySubscores :: Int -> Gen InlineResponse20019SkimmabilitySubscores
genInlineResponse20019SkimmabilitySubscores n =
  InlineResponse20019SkimmabilitySubscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresBulletPointRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresImageScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresHighlightedWordRatioScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresVideoScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresParagraphScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019SkimmabilitySubscoresParagraphHeadlineRatioScore :: Maybe [Int]
  
instance Arbitrary InlineResponse20019Style where
  arbitrary = sized genInlineResponse20019Style

genInlineResponse20019Style :: Int -> Gen InlineResponse20019Style
genInlineResponse20019Style n =
  InlineResponse20019Style
    <$> arbitraryReducedMaybe n -- inlineResponse20019StyleMainscores :: Maybe InlineResponse20019ReadabilityMainscores
    <*> arbitraryReducedMaybe n -- inlineResponse20019StyleSubscores :: Maybe InlineResponse20019StyleSubscores
  
instance Arbitrary InlineResponse20019StyleSubscores where
  arbitrary = sized genInlineResponse20019StyleSubscores

genInlineResponse20019StyleSubscores :: Int -> Gen InlineResponse20019StyleSubscores
genInlineResponse20019StyleSubscores n =
  InlineResponse20019StyleSubscores
    <$> arbitraryReducedMaybe n -- inlineResponse20019StyleSubscoresAbbreviationScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019StyleSubscoresStyleScore :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- inlineResponse20019StyleSubscoresSpellingScore :: Maybe [Int]
  
instance Arbitrary InlineResponse2002 where
  arbitrary = sized genInlineResponse2002

genInlineResponse2002 :: Int -> Gen InlineResponse2002
genInlineResponse2002 n =
  InlineResponse2002
    <$> arbitraryReducedMaybe n -- inlineResponse2002Offset :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2002Number :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2002Available :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2002News :: Maybe [InlineResponse2002News]
  
instance Arbitrary InlineResponse20020 where
  arbitrary = sized genInlineResponse20020

genInlineResponse20020 :: Int -> Gen InlineResponse20020
genInlineResponse20020 n =
  InlineResponse20020
    <$> arbitraryReducedMaybe n -- inlineResponse20020Readability :: Maybe InlineResponse20019Readability
  
instance Arbitrary InlineResponse20021 where
  arbitrary = sized genInlineResponse20021

genInlineResponse20021 :: Int -> Gen InlineResponse20021
genInlineResponse20021 n =
  InlineResponse20021
    <$> arbitraryReducedMaybe n -- inlineResponse20021Dates :: Maybe [InlineResponse20021Dates]
  
instance Arbitrary InlineResponse20021Dates where
  arbitrary = sized genInlineResponse20021Dates

genInlineResponse20021Dates :: Int -> Gen InlineResponse20021Dates
genInlineResponse20021Dates n =
  InlineResponse20021Dates
    <$> arbitraryReducedMaybe n -- inlineResponse20021DatesStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20021DatesDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20021DatesNormalizedDate :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20021DatesTag :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20021DatesEndPosition :: Maybe Int
  
instance Arbitrary InlineResponse20022 where
  arbitrary = sized genInlineResponse20022

genInlineResponse20022 :: Int -> Gen InlineResponse20022
genInlineResponse20022 n =
  InlineResponse20022
    <$> arbitraryReducedMaybe n -- inlineResponse20022Synonyms :: Maybe [Text]
  
instance Arbitrary InlineResponse20023 where
  arbitrary = sized genInlineResponse20023

genInlineResponse20023 :: Int -> Gen InlineResponse20023
genInlineResponse20023 n =
  InlineResponse20023
    <$> arbitraryReducedMaybe n -- inlineResponse20023TaggedText :: Maybe Text
  
instance Arbitrary InlineResponse20024 where
  arbitrary = sized genInlineResponse20024

genInlineResponse20024 :: Int -> Gen InlineResponse20024
genInlineResponse20024 n =
  InlineResponse20024
    <$> arbitraryReducedMaybe n -- inlineResponse20024Original :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20024Stemmed :: Maybe Text
  
instance Arbitrary InlineResponse20025 where
  arbitrary = sized genInlineResponse20025

genInlineResponse20025 :: Int -> Gen InlineResponse20025
genInlineResponse20025 n =
  InlineResponse20025
    <$> arbitraryReducedMaybe n -- inlineResponse20025Original :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20025Singular :: Maybe Text
  
instance Arbitrary InlineResponse20026 where
  arbitrary = sized genInlineResponse20026

genInlineResponse20026 :: Int -> Gen InlineResponse20026
genInlineResponse20026 n =
  InlineResponse20026
    <$> arbitraryReducedMaybe n -- inlineResponse20026Original :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20026Plural :: Maybe Text
  
instance Arbitrary InlineResponse20027 where
  arbitrary = sized genInlineResponse20027

genInlineResponse20027 :: Int -> Gen InlineResponse20027
genInlineResponse20027 n =
  InlineResponse20027
    <$> arbitraryReducedMaybe n -- inlineResponse20027Entities :: Maybe [InlineResponse20027Entities]
  
instance Arbitrary InlineResponse20027Entities where
  arbitrary = sized genInlineResponse20027Entities

genInlineResponse20027Entities :: Int -> Gen InlineResponse20027Entities
genInlineResponse20027Entities n =
  InlineResponse20027Entities
    <$> arbitraryReducedMaybe n -- inlineResponse20027EntitiesStartPosition :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20027EntitiesImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20027EntitiesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20027EntitiesValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20027EntitiesEndPosition :: Maybe Int
  
instance Arbitrary InlineResponse20028 where
  arbitrary = sized genInlineResponse20028

genInlineResponse20028 :: Int -> Gen InlineResponse20028
genInlineResponse20028 n =
  InlineResponse20028
    <$> arbitraryReducedMaybe n -- inlineResponse20028Images :: Maybe [InlineResponse20028Images]
  
instance Arbitrary InlineResponse20028Images where
  arbitrary = sized genInlineResponse20028Images

genInlineResponse20028Images :: Int -> Gen InlineResponse20028Images
genInlineResponse20028Images n =
  InlineResponse20028Images
    <$> arbitraryReducedMaybe n -- inlineResponse20028ImagesWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse20028ImagesLicense :: Maybe InlineResponse20028License
    <*> arbitraryReducedMaybe n -- inlineResponse20028ImagesThumbnail :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20028ImagesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20028ImagesUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20028ImagesHeight :: Maybe Int
  
instance Arbitrary InlineResponse20028License where
  arbitrary = sized genInlineResponse20028License

genInlineResponse20028License :: Int -> Gen InlineResponse20028License
genInlineResponse20028License n =
  InlineResponse20028License
    <$> arbitraryReducedMaybe n -- inlineResponse20028LicenseName :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20028LicenseLink :: Maybe Text
  
instance Arbitrary InlineResponse20029 where
  arbitrary = sized genInlineResponse20029

genInlineResponse20029 :: Int -> Gen InlineResponse20029
genInlineResponse20029 n =
  InlineResponse20029
    <$> arbitraryReducedMaybe n -- inlineResponse20029SpecificColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20029MainColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse20029HexCode :: Maybe Text
  
instance Arbitrary InlineResponse2002News where
  arbitrary = sized genInlineResponse2002News

genInlineResponse2002News :: Int -> Gen InlineResponse2002News
genInlineResponse2002News n =
  InlineResponse2002News
    <$> arbitraryReducedMaybe n -- inlineResponse2002NewsSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsSentiment :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsSourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsLanguage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsId :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsText :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsPublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2002NewsAuthors :: Maybe [Text]
  
instance Arbitrary InlineResponse2003 where
  arbitrary = sized genInlineResponse2003

genInlineResponse2003 :: Int -> Gen InlineResponse2003
genInlineResponse2003 n =
  InlineResponse2003
    <$> arbitraryReducedMaybe n -- inlineResponse2003Title :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Text :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Url :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Image :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003PublishDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Author :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Language :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003SourceCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2003Sentiment :: Maybe Double
  
instance Arbitrary InlineResponse20030 where
  arbitrary = sized genInlineResponse20030

genInlineResponse20030 :: Int -> Gen InlineResponse20030
genInlineResponse20030 n =
  InlineResponse20030
    <$> arbitraryReducedMaybe n -- inlineResponse20030TargetAmount :: Maybe Double
    <*> arbitraryReducedMaybe n -- inlineResponse20030TargetUnit :: Maybe Text
  
instance Arbitrary InlineResponse20031 where
  arbitrary = sized genInlineResponse20031

genInlineResponse20031 :: Int -> Gen InlineResponse20031
genInlineResponse20031 n =
  InlineResponse20031
    <$> arbitraryReducedMaybe n -- inlineResponse20031Value :: Maybe Text
  
instance Arbitrary InlineResponse20032 where
  arbitrary = sized genInlineResponse20032

genInlineResponse20032 :: Int -> Gen InlineResponse20032
genInlineResponse20032 n =
  InlineResponse20032
    <$> arbitraryReducedMaybe n -- inlineResponse20032Status :: Maybe Text
  
instance Arbitrary InlineResponse2004 where
  arbitrary = sized genInlineResponse2004

genInlineResponse2004 :: Int -> Gen InlineResponse2004
genInlineResponse2004 n =
  InlineResponse2004
    <$> arbitraryReducedMaybe n -- inlineResponse2004Jokes :: Maybe [InlineResponse2004Jokes]
    <*> arbitraryReducedMaybe n -- inlineResponse2004Available :: Maybe Int
  
instance Arbitrary InlineResponse2004Jokes where
  arbitrary = sized genInlineResponse2004Jokes

genInlineResponse2004Jokes :: Int -> Gen InlineResponse2004Jokes
genInlineResponse2004Jokes n =
  InlineResponse2004Jokes
    <$> arbitraryReducedMaybe n -- inlineResponse2004JokesJoke :: Maybe Text
  
instance Arbitrary InlineResponse2005 where
  arbitrary = sized genInlineResponse2005

genInlineResponse2005 :: Int -> Gen InlineResponse2005
genInlineResponse2005 n =
  InlineResponse2005
    <$> arbitraryReducedMaybe n -- inlineResponse2005Memes :: Maybe [InlineResponse2005Memes]
    <*> arbitraryReducedMaybe n -- inlineResponse2005Available :: Maybe Int
  
instance Arbitrary InlineResponse2005Memes where
  arbitrary = sized genInlineResponse2005Memes

genInlineResponse2005Memes :: Int -> Gen InlineResponse2005Memes
genInlineResponse2005Memes n =
  InlineResponse2005Memes
    <$> arbitraryReducedMaybe n -- inlineResponse2005MemesType :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2005MemesDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2005MemesUrl :: Maybe Text
  
instance Arbitrary InlineResponse2006 where
  arbitrary = sized genInlineResponse2006

genInlineResponse2006 :: Int -> Gen InlineResponse2006
genInlineResponse2006 n =
  InlineResponse2006
    <$> arbitraryReducedMaybe n -- inlineResponse2006Description :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2006Url :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2006Type :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2006Width :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2006Height :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2006Ratio :: Maybe Double
  
instance Arbitrary InlineResponse2007 where
  arbitrary = sized genInlineResponse2007

genInlineResponse2007 :: Int -> Gen InlineResponse2007
genInlineResponse2007 n =
  InlineResponse2007
    <$> arbitraryReducedMaybe n -- inlineResponse2007Images :: Maybe [InlineResponse2007Images]
  
instance Arbitrary InlineResponse2007Images where
  arbitrary = sized genInlineResponse2007Images

genInlineResponse2007Images :: Int -> Gen InlineResponse2007Images
genInlineResponse2007Images n =
  InlineResponse2007Images
    <$> arbitraryReducedMaybe n -- inlineResponse2007ImagesWidth :: Maybe Int
    <*> arbitraryReducedMaybe n -- inlineResponse2007ImagesUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2007ImagesHeight :: Maybe Int
  
instance Arbitrary InlineResponse2008 where
  arbitrary = sized genInlineResponse2008

genInlineResponse2008 :: Int -> Gen InlineResponse2008
genInlineResponse2008 n =
  InlineResponse2008
    <$> arbitraryReducedMaybe n -- inlineResponse2008Word :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse2008Rating :: Maybe Double
  
instance Arbitrary InlineResponse2009 where
  arbitrary = sized genInlineResponse2009

genInlineResponse2009 :: Int -> Gen InlineResponse2009
genInlineResponse2009 n =
  InlineResponse2009
    <$> arbitraryReducedMaybe n -- inlineResponse2009Trivia :: Maybe Text
  
instance Arbitrary InlineResponse200Books where
  arbitrary = sized genInlineResponse200Books

genInlineResponse200Books :: Int -> Gen InlineResponse200Books
genInlineResponse200Books n =
  InlineResponse200Books
    <$> arbitraryReducedMaybe n -- inlineResponse200BooksTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200BooksImage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inlineResponse200BooksId :: Maybe Int
  



