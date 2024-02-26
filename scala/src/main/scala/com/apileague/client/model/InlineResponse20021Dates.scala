package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param startUnderscoreposition 
 * @param date 
 * @param normalizedUnderscoredate 
 * @param tag 
 * @param endUnderscoreposition 
 */
case class InlineResponse20021Dates(startUnderscoreposition: Option[Int],
                date: Option[String],
                normalizedUnderscoredate: Option[BigDecimal],
                tag: Option[String],
                endUnderscoreposition: Option[Int]
                )

object InlineResponse20021Dates {
    /**
     * Creates the codec for converting InlineResponse20021Dates from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20021Dates] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20021Dates] = deriveEncoder
}
