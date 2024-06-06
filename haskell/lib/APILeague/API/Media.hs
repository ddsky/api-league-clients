{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.2.0
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Media
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Media where

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


-- ** Media

-- *** detectMainImageColor

-- | @GET \/detect-color@
-- 
-- Detect Main Image Color
-- 
-- Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
detectMainImageColor
  :: Url -- ^ "url" -  The url of the image for which the colors should be detected.
  -> APILeagueRequest DetectMainImageColor MimeNoContent [DetectMainImageColor200ResponseInner] MimeJSON
detectMainImageColor (Url url) =
  _mkRequest "GET" ["/detect-color"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)

data DetectMainImageColor  
-- | @application/json@
instance Produces DetectMainImageColor MimeJSON


-- *** rescaleImage

-- | @GET \/rescale-image@
-- 
-- Rescale Image
-- 
-- Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
rescaleImage
  :: Url -- ^ "url" -  The url of the image to be rescaled.
  -> Width -- ^ "width" -  The desired width of the rescaled image.
  -> Height -- ^ "height" -  The desired height of the rescaled image.
  -> Crop -- ^ "crop" -  Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  -> APILeagueRequest RescaleImage MimeNoContent A.Value MimeOctetStream
rescaleImage (Url url) (Width width) (Height height) (Crop crop) =
  _mkRequest "GET" ["/rescale-image"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("url", Just url)
    `addQuery` toQuery ("width", Just width)
    `addQuery` toQuery ("height", Just height)
    `addQuery` toQuery ("crop", Just crop)

data RescaleImage  
-- | @application/octet-stream@
instance Produces RescaleImage MimeOctetStream


-- *** searchRoyaltyFreeImages

-- | @GET \/search-images@
-- 
-- Search Royalty Free Images
-- 
-- Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchRoyaltyFreeImages
  :: Query -- ^ "query" -  The search query.
  -> APILeagueRequest SearchRoyaltyFreeImages MimeNoContent SearchRoyaltyFreeImages200Response MimeJSON
searchRoyaltyFreeImages (Query query) =
  _mkRequest "GET" ["/search-images"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("query", Just query)

data SearchRoyaltyFreeImages  

-- | /Optional Param/ "number" - The number of images to return in range [1,10]
instance HasOptionalParam SearchRoyaltyFreeImages Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchRoyaltyFreeImages MimeJSON

