package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param width 
 * @param url 
 * @param height 
 */
case class InlineResponse2007Images(width: Option[Int],
                url: Option[String],
                height: Option[Int]
                )

object InlineResponse2007Images {
    /**
     * Creates the codec for converting InlineResponse2007Images from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2007Images] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2007Images] = deriveEncoder
}
