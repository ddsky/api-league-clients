package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param sentiment 
 * @param confidence 
 * @param averageUnderscoreconfidence 
 */
case class InlineResponse20018Document(sentiment: Option[String],
                confidence: Option[Int],
                averageUnderscoreconfidence: Option[Int]
                )

object InlineResponse20018Document {
    /**
     * Creates the codec for converting InlineResponse20018Document from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018Document] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018Document] = deriveEncoder
}
