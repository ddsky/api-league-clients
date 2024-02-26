package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param name 
 * @param link 
 */
case class InlineResponse20027License(name: Option[String],
                link: Option[String]
                )

object InlineResponse20027License {
    /**
     * Creates the codec for converting InlineResponse20027License from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20027License] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20027License] = deriveEncoder
}
