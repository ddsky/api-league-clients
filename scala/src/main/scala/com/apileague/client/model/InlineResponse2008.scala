package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param word 
 * @param rating 
 */
case class InlineResponse2008(word: Option[String],
                rating: Option[BigDecimal]
                )

object InlineResponse2008 {
    /**
     * Creates the codec for converting InlineResponse2008 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2008] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2008] = deriveEncoder
}
