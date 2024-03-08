{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.0
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Knowledge
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Knowledge where

import APILeague.Core
import APILeague.MimeTypes
import APILeague.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Knowledge

-- *** randomQuote

-- | @GET \/retrieve-random-quote@
-- 
-- Random Quote
-- 
-- This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomQuote
  :: APILeagueRequest RandomQuote MimeNoContent RandomQuote200Response MimeJSON
randomQuote =
  _mkRequest "GET" ["/retrieve-random-quote"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomQuote  

-- | /Optional Param/ "min-length" - The minimum length of the quote in letters.
instance HasOptionalParam RandomQuote MinLength where
  applyOptionalParam req (MinLength xs) =
    req `addQuery` toQuery ("min-length", Just xs)

-- | /Optional Param/ "max-length" - The maximum length of the quote in letters.
instance HasOptionalParam RandomQuote MaxLengthInt where
  applyOptionalParam req (MaxLengthInt xs) =
    req `addQuery` toQuery ("max-length", Just xs)
-- | @application/json@
instance Produces RandomQuote MimeJSON


-- *** randomTrivia

-- | @GET \/retrieve-random-trivia@
-- 
-- Random Trivia
-- 
-- This endpoint returns a random piece of trivia.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomTrivia
  :: APILeagueRequest RandomTrivia MimeNoContent RandomTrivia200Response MimeJSON
randomTrivia =
  _mkRequest "GET" ["/retrieve-random-trivia"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomTrivia  

-- | /Optional Param/ "max-length" - The maximum length of the trivia in letters.
instance HasOptionalParam RandomTrivia MaxLengthInt where
  applyOptionalParam req (MaxLengthInt xs) =
    req `addQuery` toQuery ("max-length", Just xs)
-- | @application/json@
instance Produces RandomTrivia MimeJSON

