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
case class InlineResponse20014Results(title: Option[String],
                summary: Option[String],
                url: Option[String]
                )

object InlineResponse20014Results {
    /**
     * Creates the codec for converting InlineResponse20014Results from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20014Results] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20014Results] = deriveEncoder
}
