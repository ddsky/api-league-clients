{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import APILeague.Model
import APILeague.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy ConvertUnits200Response)
      propMimeEq MimeJSON (Proxy :: Proxy CorrectSpelling200Response)
      propMimeEq MimeJSON (Proxy :: Proxy DetectLanguage200ResponseInner)
      propMimeEq MimeJSON (Proxy :: Proxy DetectMainImageColor200ResponseInner)
      propMimeEq MimeJSON (Proxy :: Proxy DetectSentiment200Response)
      propMimeEq MimeJSON (Proxy :: Proxy DetectSentiment200ResponseDocument)
      propMimeEq MimeJSON (Proxy :: Proxy DetectSentiment200ResponseSentencesInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractAuthors200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractAuthors200ResponseAuthorsInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractContentFromAWebPage200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractDates200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractDates200ResponseDatesInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractEntities200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractEntities200ResponseEntitiesInner)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractNews200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ExtractPublishDate200Response)
      propMimeEq MimeJSON (Proxy :: Proxy FindSimilarBooks200Response)
      propMimeEq MimeJSON (Proxy :: Proxy GenerateNonsenseWord200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ListWordSynonyms200Response)
      propMimeEq MimeJSON (Proxy :: Proxy PartOfSpeechTagging200Response)
      propMimeEq MimeJSON (Proxy :: Proxy PluralizeWord200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomMeme200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomPoem200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomQuote200Response)
      propMimeEq MimeJSON (Proxy :: Proxy RandomTrivia200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ReadKeyValueFromStore200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreReadability200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200Response)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseInterestingness)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseInterestingnessSubscores)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseReadability)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseReadabilityMainscores)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseReadabilitySubscores)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseSkimmability)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseSkimmabilityMainscores)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseSkimmabilitySubscores)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseStyle)
      propMimeEq MimeJSON (Proxy :: Proxy ScoreText200ResponseStyleSubscores)
      propMimeEq MimeJSON (Proxy :: Proxy SearchBooks200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchBooks200ResponseBooksInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchGifs200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchGifs200ResponseImagesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchJokes200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchJokes200ResponseJokesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchMemes200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchMemes200ResponseMemesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNews200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchNews200ResponseNewsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchRoyaltyFreeImages200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchRoyaltyFreeImages200ResponseImagesInner)
      propMimeEq MimeJSON (Proxy :: Proxy SearchRoyaltyFreeImages200ResponseImagesInnerLicense)
      propMimeEq MimeJSON (Proxy :: Proxy SearchWeb200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchWeb200ResponseResultsInner)
      propMimeEq MimeJSON (Proxy :: Proxy SingularizeWord200Response)
      propMimeEq MimeJSON (Proxy :: Proxy StoreKeyValueGET200Response)
      propMimeEq MimeJSON (Proxy :: Proxy TextStemming200Response)
      
