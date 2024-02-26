package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param length 
 * @param sentiment 
 * @param offset 
 * @param confidence 
 */
case class InlineResponse20017Sentences(length: Option[Int],
                sentiment: Option[String],
                offset: Option[Int],
                confidence: Option[Int]
                )

object InlineResponse20017Sentences {
    /**
     * Creates the codec for converting InlineResponse20017Sentences from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20017Sentences] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20017Sentences] = deriveEncoder
}
