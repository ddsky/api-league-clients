package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20015Results
import scala.collection.immutable.Seq

/**
 * 
 * @param results 
 */
case class InlineResponse20015(results: Option[Seq[InlineResponse20015Results]]
                )

object InlineResponse20015 {
    /**
     * Creates the codec for converting InlineResponse20015 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20015] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20015] = deriveEncoder
}
