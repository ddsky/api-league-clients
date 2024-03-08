package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param length 
 * @param sentiment 
 * @param offset 
 * @param confidence 
 */
case class DetectSentiment200ResponseSentencesInner(length: Option[Int],
                sentiment: Option[String],
                offset: Option[Int],
                confidence: Option[Int]
                )

object DetectSentiment200ResponseSentencesInner {
    /**
     * Creates the codec for converting DetectSentiment200ResponseSentencesInner from and to JSON.
     */
    implicit val decoder: Decoder[DetectSentiment200ResponseSentencesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectSentiment200ResponseSentencesInner] = deriveEncoder
}
