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
case class InlineResponse20018SkimmabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[BigDecimal]
                )

object InlineResponse20018SkimmabilityMainscores {
    /**
     * Creates the codec for converting InlineResponse20018SkimmabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018SkimmabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018SkimmabilityMainscores] = deriveEncoder
}
