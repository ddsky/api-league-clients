{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.0.0
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Books
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Books where

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


-- ** Books

-- *** findSimilarBooks

-- | @GET \/list-similar-books@
-- 
-- Find Similar Books
-- 
-- Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
findSimilarBooks
  :: Id -- ^ "id" -  The id of the book to which similar books should be found.
  -> APILeagueRequest FindSimilarBooks MimeNoContent FindSimilarBooks200Response MimeJSON
findSimilarBooks (Id id) =
  _mkRequest "GET" ["/list-similar-books"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data FindSimilarBooks  

-- | /Optional Param/ "number" - The number of similar books to return in range [1,100]
instance HasOptionalParam FindSimilarBooks Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces FindSimilarBooks MimeJSON


-- *** searchBooks

-- | @GET \/search-books@
-- 
-- Search Books
-- 
-- Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchBooks
  :: APILeagueRequest SearchBooks MimeNoContent SearchBooks200Response MimeJSON
searchBooks =
  _mkRequest "GET" ["/search-books"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchBooks  

-- | /Optional Param/ "query" - The search query.
instance HasOptionalParam SearchBooks Query where
  applyOptionalParam req (Query xs) =
    req `addQuery` toQuery ("query", Just xs)

-- | /Optional Param/ "earliest-publish-year" - The books must have been published after this year.
instance HasOptionalParam SearchBooks EarliestPublishYear where
  applyOptionalParam req (EarliestPublishYear xs) =
    req `addQuery` toQuery ("earliest-publish-year", Just xs)

-- | /Optional Param/ "latest-publish-year" - The books must have been published before this year.
instance HasOptionalParam SearchBooks LatestPublishYear where
  applyOptionalParam req (LatestPublishYear xs) =
    req `addQuery` toQuery ("latest-publish-year", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating the book must have gotten in the interval [0,1].
instance HasOptionalParam SearchBooks MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-rating" - The maximum rating the book must have gotten in the interval [0,1].
instance HasOptionalParam SearchBooks MaxRating where
  applyOptionalParam req (MaxRating xs) =
    req `addQuery` toQuery ("max-rating", Just xs)

-- | /Optional Param/ "genres" - A comma-separated list of genres. Only books from any of the given genres will be returned.
instance HasOptionalParam SearchBooks Genres where
  applyOptionalParam req (Genres xs) =
    req `addQuery` toQuery ("genres", Just xs)

-- | /Optional Param/ "authors" - A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
instance HasOptionalParam SearchBooks Authors where
  applyOptionalParam req (Authors xs) =
    req `addQuery` toQuery ("authors", Just xs)

-- | /Optional Param/ "isbn" - Only the book matching the ISBN-13 will be returned
instance HasOptionalParam SearchBooks Isbn where
  applyOptionalParam req (Isbn xs) =
    req `addQuery` toQuery ("isbn", Just xs)

-- | /Optional Param/ "oclc" - Only the book matching the OCLC will be returned
instance HasOptionalParam SearchBooks Oclc where
  applyOptionalParam req (Oclc xs) =
    req `addQuery` toQuery ("oclc", Just xs)

-- | /Optional Param/ "sort" - The sorting criteria (publish-date or rating).
instance HasOptionalParam SearchBooks Sort where
  applyOptionalParam req (Sort xs) =
    req `addQuery` toQuery ("sort", Just xs)

-- | /Optional Param/ "sort-direction" - Whether to sort ascending or descending (ASC or DESC).
instance HasOptionalParam SearchBooks SortDirection where
  applyOptionalParam req (SortDirection xs) =
    req `addQuery` toQuery ("sort-direction", Just xs)

-- | /Optional Param/ "group-results" - Whether to group similar editions of the same book.
instance HasOptionalParam SearchBooks GroupResults where
  applyOptionalParam req (GroupResults xs) =
    req `addQuery` toQuery ("group-results", Just xs)

-- | /Optional Param/ "offset" - The number of books to skip in range [0,1000]
instance HasOptionalParam SearchBooks Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of books to return in range [1,100]
instance HasOptionalParam SearchBooks Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchBooks MimeJSON

