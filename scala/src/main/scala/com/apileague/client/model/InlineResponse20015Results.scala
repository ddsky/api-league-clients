package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param title 
 * @param summary 
 * @param url 
 */
case class InlineResponse20015Results(title: Option[String],
                summary: Option[String],
                url: Option[String]
                )

object InlineResponse20015Results {
    /**
     * Creates the codec for converting InlineResponse20015Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20015Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20015Results] = deriveEncoder
}
