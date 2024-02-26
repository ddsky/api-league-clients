package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20019ReadabilityMainscores
import com.apileague.client.model.InlineResponse20019StyleSubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20019Style(mainscores: Option[InlineResponse20019ReadabilityMainscores],
                subscores: Option[InlineResponse20019StyleSubscores]
                )

object InlineResponse20019Style {
    /**
     * Creates the codec for converting InlineResponse20019Style from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019Style] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019Style] = deriveEncoder
}
