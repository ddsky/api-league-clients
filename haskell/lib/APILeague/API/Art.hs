{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.4.0
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Art
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Art where

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


-- ** Art

-- *** imageToAsciiArtByURL

-- | @GET \/convert-image-to-ascii-txt@
-- 
-- Image to Ascii Art by URL
-- 
-- Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
imageToAsciiArtByURL
  :: Url -- ^ "url" -  The URL to the image.
  -> APILeagueRequest ImageToAsciiArtByURL MimeNoContent Text MimePlainText
imageToAsciiArtByURL (Url url) =
  _mkRequest "GET" ["/convert-image-to-ascii-txt"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)

data ImageToAsciiArtByURL  

-- | /Optional Param/ "width" - The maximum width of the image (default 400, max. 500).
instance HasOptionalParam ImageToAsciiArtByURL Width where
  applyOptionalParam req (Width xs) =
    req `addQuery` toQuery ("width", Just xs)

-- | /Optional Param/ "height" - The maximum height of the image (default 400, max. 500).
instance HasOptionalParam ImageToAsciiArtByURL Height where
  applyOptionalParam req (Height xs) =
    req `addQuery` toQuery ("height", Just xs)
-- | @text/plain@
instance Produces ImageToAsciiArtByURL MimePlainText


-- *** randomPoem

-- | @GET \/retrieve-random-poem@
-- 
-- Random Poem
-- 
-- Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomPoem
  :: APILeagueRequest RandomPoem MimeNoContent RandomPoem200Response MimeJSON
randomPoem =
  _mkRequest "GET" ["/retrieve-random-poem"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomPoem  

-- | /Optional Param/ "min-lines" - The minimum number of lines of the poem.
instance HasOptionalParam RandomPoem MinLines where
  applyOptionalParam req (MinLines xs) =
    req `addQuery` toQuery ("min-lines", Just xs)

-- | /Optional Param/ "max-lines" - The maximum number of lines of the poem.
instance HasOptionalParam RandomPoem MaxLines where
  applyOptionalParam req (MaxLines xs) =
    req `addQuery` toQuery ("max-lines", Just xs)
-- | @application/json@
instance Produces RandomPoem MimeJSON

