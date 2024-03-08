package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ExtractDates200ResponseDatesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param dates 
 */
case class ExtractDates200Response(dates: Option[Seq[ExtractDates200ResponseDatesInner]]
                )

object ExtractDates200Response {
    /**
     * Creates the codec for converting ExtractDates200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractDates200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractDates200Response] = deriveEncoder
}
