package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20019SkimmabilityMainscores
import com.apileague.client.model.InlineResponse20019SkimmabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20019Skimmability(mainscores: Option[InlineResponse20019SkimmabilityMainscores],
                subscores: Option[InlineResponse20019SkimmabilitySubscores]
                )

object InlineResponse20019Skimmability {
    /**
     * Creates the codec for converting InlineResponse20019Skimmability from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019Skimmability] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019Skimmability] = deriveEncoder
}
