package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param specificUnderscorecolor 
 * @param mainUnderscorecolor 
 * @param hexUnderscorecode 
 */
case class InlineResponse20029(specificUnderscorecolor: Option[String],
                mainUnderscorecolor: Option[String],
                hexUnderscorecode: Option[String]
                )

object InlineResponse20029 {
    /**
     * Creates the codec for converting InlineResponse20029 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20029] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20029] = deriveEncoder
}
