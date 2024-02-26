package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param language 
 * @param confidence 
 */
case class InlineResponse20017(language: Option[String],
                confidence: Option[BigDecimal]
                )

object InlineResponse20017 {
    /**
     * Creates the codec for converting InlineResponse20017 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20017] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20017] = deriveEncoder
}
