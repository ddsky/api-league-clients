package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20021Dates
import scala.collection.immutable.Seq

/**
 * 
 * @param dates 
 */
case class InlineResponse20021(dates: Option[Seq[InlineResponse20021Dates]]
                )

object InlineResponse20021 {
    /**
     * Creates the codec for converting InlineResponse20021 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20021] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20021] = deriveEncoder
}
