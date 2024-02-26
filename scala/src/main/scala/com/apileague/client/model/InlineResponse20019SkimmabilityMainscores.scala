package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param totalUnderscorepossible 
 * @param total 
 */
case class InlineResponse20019SkimmabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[BigDecimal]
                )

object InlineResponse20019SkimmabilityMainscores {
    /**
     * Creates the codec for converting InlineResponse20019SkimmabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019SkimmabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019SkimmabilityMainscores] = deriveEncoder
}
