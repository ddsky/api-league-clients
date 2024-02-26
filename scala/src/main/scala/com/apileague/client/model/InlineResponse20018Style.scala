package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20018ReadabilityMainscores
import com.apileague.client.model.InlineResponse20018StyleSubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20018Style(mainscores: Option[InlineResponse20018ReadabilityMainscores],
                subscores: Option[InlineResponse20018StyleSubscores]
                )

object InlineResponse20018Style {
    /**
     * Creates the codec for converting InlineResponse20018Style from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Style] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Style] = deriveEncoder
}
