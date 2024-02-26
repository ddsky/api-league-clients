package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param status 
 */
case class InlineResponse20032(status: Option[String]
                )

object InlineResponse20032 {
    /**
     * Creates the codec for converting InlineResponse20032 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20032] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20032] = deriveEncoder
}
