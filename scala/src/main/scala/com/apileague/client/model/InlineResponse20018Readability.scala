package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20018ReadabilityMainscores
import com.apileague.client.model.InlineResponse20018ReadabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20018Readability(mainscores: Option[InlineResponse20018ReadabilityMainscores],
                subscores: Option[InlineResponse20018ReadabilitySubscores]
                )

object InlineResponse20018Readability {
    /**
     * Creates the codec for converting InlineResponse20018Readability from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Readability] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Readability] = deriveEncoder
}
