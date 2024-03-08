package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchJokes200ResponseJokesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param jokes 
 * @param available 
 */
case class SearchJokes200Response(jokes: Option[Seq[SearchJokes200ResponseJokesInner]],
                available: Option[Int]
                )

object SearchJokes200Response {
    /**
     * Creates the codec for converting SearchJokes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchJokes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchJokes200Response] = deriveEncoder
}
