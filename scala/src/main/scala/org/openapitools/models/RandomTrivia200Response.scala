package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param trivia 
 */
case class RandomTrivia200Response(trivia: Option[String]
                )

object RandomTrivia200Response {
    /**
     * Creates the codec for converting RandomTrivia200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomTrivia200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomTrivia200Response] = deriveEncoder
}
