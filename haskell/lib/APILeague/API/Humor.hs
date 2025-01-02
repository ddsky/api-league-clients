{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.6.4
   Contact: mail@apileague.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : APILeague.API.Humor
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module APILeague.API.Humor where

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


-- ** Humor

-- *** generateNonsenseWordAPI

-- | @GET \/generate-nonsense-word@
-- 
-- Generate Nonsense Word API
-- 
-- Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
generateNonsenseWordAPI
  :: APILeagueRequest GenerateNonsenseWordAPI MimeNoContent GenerateNonsenseWordAPI200Response MimeJSON
generateNonsenseWordAPI =
  _mkRequest "GET" ["/generate-nonsense-word"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data GenerateNonsenseWordAPI  
-- | @application/json@
instance Produces GenerateNonsenseWordAPI MimeJSON


-- *** randomJokeAPI

-- | @GET \/retrieve-random-joke@
-- 
-- Random Joke API
-- 
-- This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomJokeAPI
  :: APILeagueRequest RandomJokeAPI MimeNoContent SearchJokesAPI200ResponseJokesInner MimeJSON
randomJokeAPI =
  _mkRequest "GET" ["/retrieve-random-joke"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomJokeAPI  

-- | /Optional Param/ "include-tags" - A comma-separated list of tags the jokes should have.
instance HasOptionalParam RandomJokeAPI IncludeTags where
  applyOptionalParam req (IncludeTags xs) =
    req `addQuery` toQuery ("include-tags", Just xs)

-- | /Optional Param/ "exclude-tags" - A comma-separated list of tags the jokes must not have.
instance HasOptionalParam RandomJokeAPI ExcludeTags where
  applyOptionalParam req (ExcludeTags xs) =
    req `addQuery` toQuery ("exclude-tags", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the jokes.
instance HasOptionalParam RandomJokeAPI MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-length" - The maximum length of the joke in letters.
instance HasOptionalParam RandomJokeAPI MaxLengthInt where
  applyOptionalParam req (MaxLengthInt xs) =
    req `addQuery` toQuery ("max-length", Just xs)
-- | @application/json@
instance Produces RandomJokeAPI MimeJSON


-- *** randomMemeAPI

-- | @GET \/retrieve-random-meme@
-- 
-- Random Meme API
-- 
-- Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomMemeAPI
  :: APILeagueRequest RandomMemeAPI MimeNoContent RandomMemeAPI200Response MimeJSON
randomMemeAPI =
  _mkRequest "GET" ["/retrieve-random-meme"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomMemeAPI  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the meme.
instance HasOptionalParam RandomMemeAPI Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "keywords-in-image" - Whether the keywords must occur in the image.
instance HasOptionalParam RandomMemeAPI KeywordsInImage where
  applyOptionalParam req (KeywordsInImage xs) =
    req `addQuery` toQuery ("keywords-in-image", Just xs)

-- | /Optional Param/ "media-type" - The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
instance HasOptionalParam RandomMemeAPI MediaType where
  applyOptionalParam req (MediaType xs) =
    req `addQuery` toQuery ("media-type", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the meme.
instance HasOptionalParam RandomMemeAPI MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-age-days" - The maximum age of the meme in days.
instance HasOptionalParam RandomMemeAPI MaxAgeDays where
  applyOptionalParam req (MaxAgeDays xs) =
    req `addQuery` toQuery ("max-age-days", Just xs)
-- | @application/json@
instance Produces RandomMemeAPI MimeJSON


-- *** searchGifsAPI

-- | @GET \/search-gifs@
-- 
-- Search Gifs API
-- 
-- Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchGifsAPI
  :: Query -- ^ "query" -  The search query.
  -> APILeagueRequest SearchGifsAPI MimeNoContent SearchGifsAPI200Response MimeJSON
searchGifsAPI (Query query) =
  _mkRequest "GET" ["/search-gifs"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("query", Just query)

data SearchGifsAPI  

-- | /Optional Param/ "number" - The number of gifs to return in range [1,10]
instance HasOptionalParam SearchGifsAPI Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchGifsAPI MimeJSON


-- *** searchJokesAPI

-- | @GET \/search-jokes@
-- 
-- Search Jokes API
-- 
-- With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchJokesAPI
  :: APILeagueRequest SearchJokesAPI MimeNoContent SearchJokesAPI200Response MimeJSON
searchJokesAPI =
  _mkRequest "GET" ["/search-jokes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchJokesAPI  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the joke.
instance HasOptionalParam SearchJokesAPI Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "include-tags" - A comma-separated list of tags the jokes should have.
instance HasOptionalParam SearchJokesAPI IncludeTags where
  applyOptionalParam req (IncludeTags xs) =
    req `addQuery` toQuery ("include-tags", Just xs)

-- | /Optional Param/ "exclude-tags" - A comma-separated list of tags the jokes must not have.
instance HasOptionalParam SearchJokesAPI ExcludeTags where
  applyOptionalParam req (ExcludeTags xs) =
    req `addQuery` toQuery ("exclude-tags", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the jokes.
instance HasOptionalParam SearchJokesAPI MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-length" - The maximum length of the joke in letters.
instance HasOptionalParam SearchJokesAPI MaxLength where
  applyOptionalParam req (MaxLength xs) =
    req `addQuery` toQuery ("max-length", Just xs)

-- | /Optional Param/ "offset" - The number of jokes to skip, between 0 and 1000.
instance HasOptionalParam SearchJokesAPI Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of jokes, between 1 and 10.
instance HasOptionalParam SearchJokesAPI Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchJokesAPI MimeJSON


-- *** searchMemesAPI

-- | @GET \/search-memes@
-- 
-- Search Memes API
-- 
-- Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchMemesAPI
  :: APILeagueRequest SearchMemesAPI MimeNoContent SearchMemesAPI200Response MimeJSON
searchMemesAPI =
  _mkRequest "GET" ["/search-memes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchMemesAPI  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the meme.
instance HasOptionalParam SearchMemesAPI Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "keywords-in-image" - Whether the keywords must occur in the image.
instance HasOptionalParam SearchMemesAPI KeywordsInImage where
  applyOptionalParam req (KeywordsInImage xs) =
    req `addQuery` toQuery ("keywords-in-image", Just xs)

-- | /Optional Param/ "media-type" - The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
instance HasOptionalParam SearchMemesAPI MediaType where
  applyOptionalParam req (MediaType xs) =
    req `addQuery` toQuery ("media-type", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the meme.
instance HasOptionalParam SearchMemesAPI MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-age-days" - The maximum age of the meme in days.
instance HasOptionalParam SearchMemesAPI MaxAgeDays where
  applyOptionalParam req (MaxAgeDays xs) =
    req `addQuery` toQuery ("max-age-days", Just xs)

-- | /Optional Param/ "offset" - The number of memes to skip, between 0 and 1000.
instance HasOptionalParam SearchMemesAPI Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of memes, between 1 and 10.
instance HasOptionalParam SearchMemesAPI Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchMemesAPI MimeJSON

