package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param title 
 * @param author 
 * @param poem 
 */
case class InlineResponse20011(title: Option[String],
                author: Option[String],
                poem: Option[String]
                )

object InlineResponse20011 {
    /**
     * Creates the codec for converting InlineResponse20011 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20011] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20011] = deriveEncoder
}
