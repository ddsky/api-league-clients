package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20019ReadabilityMainscores
import com.apileague.client.model.InlineResponse20019ReadabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20019Readability(mainscores: Option[InlineResponse20019ReadabilityMainscores],
                subscores: Option[InlineResponse20019ReadabilitySubscores]
                )

object InlineResponse20019Readability {
    /**
     * Creates the codec for converting InlineResponse20019Readability from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019Readability] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019Readability] = deriveEncoder
}
