package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param author 
 * @param quote 
 */
case class RandomQuote200Response(author: Option[String],
                quote: Option[String]
                )

object RandomQuote200Response {
    /**
     * Creates the codec for converting RandomQuote200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomQuote200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomQuote200Response] = deriveEncoder
}
