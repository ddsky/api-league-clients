package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param link 
 * @param name 
 */
case class InlineResponse20013Authors(link: Option[String],
                name: Option[String]
                )

object InlineResponse20013Authors {
    /**
     * Creates the codec for converting InlineResponse20013Authors from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013Authors] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013Authors] = deriveEncoder
}
