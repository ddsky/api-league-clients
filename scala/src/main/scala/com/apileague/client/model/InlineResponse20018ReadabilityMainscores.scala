package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param totalUnderscorepossible 
 * @param total 
 */
case class InlineResponse20018ReadabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[Int]
                )

object InlineResponse20018ReadabilityMainscores {
    /**
     * Creates the codec for converting InlineResponse20018ReadabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018ReadabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018ReadabilityMainscores] = deriveEncoder
}
