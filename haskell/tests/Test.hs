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
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse200)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2001)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20010)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20011)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20012)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20013)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20014)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20014Authors)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20015)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20015Results)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20016)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20017)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20018)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20018Document)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20018Sentences)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019Interestingness)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019InterestingnessSubscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019Readability)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019ReadabilityMainscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019ReadabilitySubscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019Skimmability)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019SkimmabilityMainscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019SkimmabilitySubscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019Style)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20019StyleSubscores)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2002)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20020)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20021)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20021Dates)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20022)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20023)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20024)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20025)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20026)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20027)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20027Entities)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20028)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20028Images)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20028License)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20029)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2002News)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2003)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20030)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20031)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse20032)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2004)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2004Jokes)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2005)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2005Memes)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2006)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2007)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2007Images)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2008)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse2009)
      propMimeEq MimeJSON (Proxy :: Proxy InlineResponse200Books)
      
