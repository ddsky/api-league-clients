package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param description 
 * @param url 
 * @param _type 
 * @param width 
 * @param height 
 * @param ratio 
 */
case class InlineResponse2006(description: Option[String],
                url: Option[String],
                _type: Option[String],
                width: Option[Int],
                height: Option[Int],
                ratio: Option[BigDecimal]
                )

object InlineResponse2006 {
    /**
     * Creates the codec for converting InlineResponse2006 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2006] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2006] = deriveEncoder
}
