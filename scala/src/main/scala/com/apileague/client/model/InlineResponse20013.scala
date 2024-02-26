package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param publishUnderscoredate 
 */
case class InlineResponse20013(publishUnderscoredate: Option[String]
                )

object InlineResponse20013 {
    /**
     * Creates the codec for converting InlineResponse20013 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20013] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20013] = deriveEncoder
}
