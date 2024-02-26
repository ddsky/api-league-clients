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
case class InlineResponse20019ReadabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[Int]
                )

object InlineResponse20019ReadabilityMainscores {
    /**
     * Creates the codec for converting InlineResponse20019ReadabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019ReadabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019ReadabilityMainscores] = deriveEncoder
}
