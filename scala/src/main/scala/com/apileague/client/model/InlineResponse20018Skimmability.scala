package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20018SkimmabilityMainscores
import com.apileague.client.model.InlineResponse20018SkimmabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20018Skimmability(mainscores: Option[InlineResponse20018SkimmabilityMainscores],
                subscores: Option[InlineResponse20018SkimmabilitySubscores]
                )

object InlineResponse20018Skimmability {
    /**
     * Creates the codec for converting InlineResponse20018Skimmability from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Skimmability] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Skimmability] = deriveEncoder
}
