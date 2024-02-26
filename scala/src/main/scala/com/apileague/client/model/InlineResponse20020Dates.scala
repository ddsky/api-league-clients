package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.Null

/**
 * 
 * @param startUnderscoreposition 
 * @param date 
 * @param normalizedUnderscoredate 
 * @param tag 
 * @param endUnderscoreposition 
 */
case class InlineResponse20020Dates(startUnderscoreposition: Option[Int],
                date: Option[String],
                normalizedUnderscoredate: Option[Null],
                tag: Option[String],
                endUnderscoreposition: Option[Int]
                )

object InlineResponse20020Dates {
    /**
     * Creates the codec for converting InlineResponse20020Dates from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20020Dates] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20020Dates] = deriveEncoder
}
