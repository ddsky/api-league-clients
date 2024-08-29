{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.6.3
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Math
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Math where

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


-- ** Math

-- *** convertUnits

-- | @GET \/convert-units@
-- 
-- Convert Units
-- 
-- Convert units from one to another. The API returns the amount and the unit of the target unit.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
convertUnits
  :: SourceAmount -- ^ "sourceAmount" -  The source amount.
  -> SourceUnit -- ^ "sourceUnit" -  The source unit.
  -> TargetUnit -- ^ "targetUnit" -  The unit to which should be converted.
  -> APILeagueRequest ConvertUnits MimeNoContent ConvertUnits200Response MimeJSON
convertUnits (SourceAmount sourceAmount) (SourceUnit sourceUnit) (TargetUnit targetUnit) =
  _mkRequest "GET" ["/convert-units"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("source-amount", Just sourceAmount)
    `addQuery` toQuery ("source-unit", Just sourceUnit)
    `addQuery` toQuery ("target-unit", Just targetUnit)

data ConvertUnits  

-- | /Optional Param/ "food-name" - An optional food name. For converting foods the food is relevant as they have different densities.
instance HasOptionalParam ConvertUnits FoodName where
  applyOptionalParam req (FoodName xs) =
    req `addQuery` toQuery ("food-name", Just xs)
-- | @application/json@
instance Produces ConvertUnits MimeJSON

