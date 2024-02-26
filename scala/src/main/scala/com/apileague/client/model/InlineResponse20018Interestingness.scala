package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20018InterestingnessSubscores
import com.apileague.client.model.InlineResponse20018SkimmabilityMainscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20018Interestingness(mainscores: Option[InlineResponse20018SkimmabilityMainscores],
                subscores: Option[InlineResponse20018InterestingnessSubscores]
                )

object InlineResponse20018Interestingness {
    /**
     * Creates the codec for converting InlineResponse20018Interestingness from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Interestingness] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Interestingness] = deriveEncoder
}
