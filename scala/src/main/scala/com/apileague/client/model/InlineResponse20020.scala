package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20019Readability

/**
 * 
 * @param readability 
 */
case class InlineResponse20020(readability: Option[InlineResponse20019Readability]
                )

object InlineResponse20020 {
    /**
     * Creates the codec for converting InlineResponse20020 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20020] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20020] = deriveEncoder
}
