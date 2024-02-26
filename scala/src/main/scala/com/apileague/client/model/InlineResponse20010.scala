package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param author 
 * @param quote 
 */
case class InlineResponse20010(author: Option[String],
                quote: Option[String]
                )

object InlineResponse20010 {
    /**
     * Creates the codec for converting InlineResponse20010 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20010] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20010] = deriveEncoder
}
