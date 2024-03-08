package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param sentiment 
 * @param confidence 
 * @param averageUnderscoreconfidence 
 */
case class DetectSentiment200ResponseDocument(sentiment: Option[String],
                confidence: Option[Int],
                averageUnderscoreconfidence: Option[Int]
                )

object DetectSentiment200ResponseDocument {
    /**
     * Creates the codec for converting DetectSentiment200ResponseDocument from and to JSON.
     */
    implicit val decoder: Decoder[DetectSentiment200ResponseDocument] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectSentiment200ResponseDocument] = deriveEncoder
}
