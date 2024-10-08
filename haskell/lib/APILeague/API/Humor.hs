{-
   API League

   API League is a Hub for World Class APIs.

   OpenAPI Version: 3.0.0
   API League API version: 1.6.3
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

-- *** generateNonsenseWord

-- | @GET \/generate-nonsense-word@
-- 
-- Generate Nonsense Word
-- 
-- Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
generateNonsenseWord
  :: APILeagueRequest GenerateNonsenseWord MimeNoContent GenerateNonsenseWord200Response MimeJSON
generateNonsenseWord =
  _mkRequest "GET" ["/generate-nonsense-word"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data GenerateNonsenseWord  
-- | @application/json@
instance Produces GenerateNonsenseWord MimeJSON


-- *** randomJoke

-- | @GET \/retrieve-random-joke@
-- 
-- Random Joke
-- 
-- This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomJoke
  :: APILeagueRequest RandomJoke MimeNoContent SearchJokes200ResponseJokesInner MimeJSON
randomJoke =
  _mkRequest "GET" ["/retrieve-random-joke"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomJoke  

-- | /Optional Param/ "include-tags" - A comma-separated list of tags the jokes should have.
instance HasOptionalParam RandomJoke IncludeTags where
  applyOptionalParam req (IncludeTags xs) =
    req `addQuery` toQuery ("include-tags", Just xs)

-- | /Optional Param/ "exclude-tags" - A comma-separated list of tags the jokes must not have.
instance HasOptionalParam RandomJoke ExcludeTags where
  applyOptionalParam req (ExcludeTags xs) =
    req `addQuery` toQuery ("exclude-tags", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the jokes.
instance HasOptionalParam RandomJoke MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-length" - The maximum length of the joke in letters.
instance HasOptionalParam RandomJoke MaxLengthInt where
  applyOptionalParam req (MaxLengthInt xs) =
    req `addQuery` toQuery ("max-length", Just xs)
-- | @application/json@
instance Produces RandomJoke MimeJSON


-- *** randomMeme

-- | @GET \/retrieve-random-meme@
-- 
-- Random Meme
-- 
-- Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
randomMeme
  :: APILeagueRequest RandomMeme MimeNoContent RandomMeme200Response MimeJSON
randomMeme =
  _mkRequest "GET" ["/retrieve-random-meme"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data RandomMeme  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the meme.
instance HasOptionalParam RandomMeme Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "keywords-in-image" - Whether the keywords must occur in the image.
instance HasOptionalParam RandomMeme KeywordsInImage where
  applyOptionalParam req (KeywordsInImage xs) =
    req `addQuery` toQuery ("keywords-in-image", Just xs)

-- | /Optional Param/ "media-type" - The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
instance HasOptionalParam RandomMeme MediaType where
  applyOptionalParam req (MediaType xs) =
    req `addQuery` toQuery ("media-type", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the meme.
instance HasOptionalParam RandomMeme MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-age-days" - The maximum age of the meme in days.
instance HasOptionalParam RandomMeme MaxAgeDays where
  applyOptionalParam req (MaxAgeDays xs) =
    req `addQuery` toQuery ("max-age-days", Just xs)
-- | @application/json@
instance Produces RandomMeme MimeJSON


-- *** searchGifs

-- | @GET \/search-gifs@
-- 
-- Search Gifs
-- 
-- Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchGifs
  :: Query -- ^ "query" -  The search query.
  -> APILeagueRequest SearchGifs MimeNoContent SearchGifs200Response MimeJSON
searchGifs (Query query) =
  _mkRequest "GET" ["/search-gifs"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)
    `addQuery` toQuery ("query", Just query)

data SearchGifs  

-- | /Optional Param/ "number" - The number of gifs to return in range [1,10]
instance HasOptionalParam SearchGifs Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchGifs MimeJSON


-- *** searchJokes

-- | @GET \/search-jokes@
-- 
-- Search Jokes
-- 
-- With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchJokes
  :: APILeagueRequest SearchJokes MimeNoContent SearchJokes200Response MimeJSON
searchJokes =
  _mkRequest "GET" ["/search-jokes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchJokes  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the joke.
instance HasOptionalParam SearchJokes Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "include-tags" - A comma-separated list of tags the jokes should have.
instance HasOptionalParam SearchJokes IncludeTags where
  applyOptionalParam req (IncludeTags xs) =
    req `addQuery` toQuery ("include-tags", Just xs)

-- | /Optional Param/ "exclude-tags" - A comma-separated list of tags the jokes must not have.
instance HasOptionalParam SearchJokes ExcludeTags where
  applyOptionalParam req (ExcludeTags xs) =
    req `addQuery` toQuery ("exclude-tags", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the jokes.
instance HasOptionalParam SearchJokes MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-length" - The maximum length of the joke in letters.
instance HasOptionalParam SearchJokes MaxLength where
  applyOptionalParam req (MaxLength xs) =
    req `addQuery` toQuery ("max-length", Just xs)

-- | /Optional Param/ "offset" - The number of jokes to skip, between 0 and 1000.
instance HasOptionalParam SearchJokes Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of jokes, between 1 and 10.
instance HasOptionalParam SearchJokes Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchJokes MimeJSON


-- *** searchMemes

-- | @GET \/search-memes@
-- 
-- Search Memes
-- 
-- With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
-- 
-- AuthMethod: 'AuthApiKeyApiKey', 'AuthApiKeyHeaderApiKey'
-- 
searchMemes
  :: APILeagueRequest SearchMemes MimeNoContent SearchMemes200Response MimeJSON
searchMemes =
  _mkRequest "GET" ["/search-memes"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyApiKey)
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyHeaderApiKey)

data SearchMemes  

-- | /Optional Param/ "keywords" - A comma-separated list of words that must occur in the meme.
instance HasOptionalParam SearchMemes Keywords where
  applyOptionalParam req (Keywords xs) =
    req `addQuery` toQuery ("keywords", Just xs)

-- | /Optional Param/ "keywords-in-image" - Whether the keywords must occur in the image.
instance HasOptionalParam SearchMemes KeywordsInImage where
  applyOptionalParam req (KeywordsInImage xs) =
    req `addQuery` toQuery ("keywords-in-image", Just xs)

-- | /Optional Param/ "media-type" - The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif').
instance HasOptionalParam SearchMemes MediaType where
  applyOptionalParam req (MediaType xs) =
    req `addQuery` toQuery ("media-type", Just xs)

-- | /Optional Param/ "min-rating" - The minimum rating in range [0.0,1.0] of the meme.
instance HasOptionalParam SearchMemes MinRating where
  applyOptionalParam req (MinRating xs) =
    req `addQuery` toQuery ("min-rating", Just xs)

-- | /Optional Param/ "max-age-days" - The maximum age of the meme in days.
instance HasOptionalParam SearchMemes MaxAgeDays where
  applyOptionalParam req (MaxAgeDays xs) =
    req `addQuery` toQuery ("max-age-days", Just xs)

-- | /Optional Param/ "offset" - The number of memes to skip, between 0 and 1000.
instance HasOptionalParam SearchMemes Offset where
  applyOptionalParam req (Offset xs) =
    req `addQuery` toQuery ("offset", Just xs)

-- | /Optional Param/ "number" - The number of memes, between 1 and 10.
instance HasOptionalParam SearchMemes Number where
  applyOptionalParam req (Number xs) =
    req `addQuery` toQuery ("number", Just xs)
-- | @application/json@
instance Produces SearchMemes MimeJSON

