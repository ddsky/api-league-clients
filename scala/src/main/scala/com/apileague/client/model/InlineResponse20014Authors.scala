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
case class InlineResponse20014Authors(link: Option[String],
                name: Option[String]
                )

object InlineResponse20014Authors {
    /**
     * Creates the codec for converting InlineResponse20014Authors from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20014Authors] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20014Authors] = deriveEncoder
}
