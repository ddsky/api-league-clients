package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param startUnderscoreposition 
 * @param date 
 * @param normalizedUnderscoredate 
 * @param tag 
 * @param endUnderscoreposition 
 */
case class ExtractDates200ResponseDatesInner(startUnderscoreposition: Option[Int],
                date: Option[String],
                normalizedUnderscoredate: Option[BigDecimal],
                tag: Option[String],
                endUnderscoreposition: Option[Int]
                )

object ExtractDates200ResponseDatesInner {
    /**
     * Creates the codec for converting ExtractDates200ResponseDatesInner from and to JSON.
     */
    implicit val decoder: Decoder[ExtractDates200ResponseDatesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractDates200ResponseDatesInner] = deriveEncoder
}
