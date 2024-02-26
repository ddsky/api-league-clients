package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param original 
 * @param stemmed 
 */
case class InlineResponse20024(original: Option[String],
                stemmed: Option[String]
                )

object InlineResponse20024 {
    /**
     * Creates the codec for converting InlineResponse20024 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20024] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20024] = deriveEncoder
}
