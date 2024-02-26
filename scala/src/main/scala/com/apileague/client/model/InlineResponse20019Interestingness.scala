package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20019InterestingnessSubscores
import com.apileague.client.model.InlineResponse20019SkimmabilityMainscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class InlineResponse20019Interestingness(mainscores: Option[InlineResponse20019SkimmabilityMainscores],
                subscores: Option[InlineResponse20019InterestingnessSubscores]
                )

object InlineResponse20019Interestingness {
    /**
     * Creates the codec for converting InlineResponse20019Interestingness from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019Interestingness] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019Interestingness] = deriveEncoder
}
