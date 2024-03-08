package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param description 
 * @param url 
 * @param _type 
 * @param width 
 * @param height 
 * @param ratio 
 */
case class RandomMeme200Response(description: Option[String],
                url: Option[String],
                _type: Option[String],
                width: Option[Int],
                height: Option[Int],
                ratio: Option[BigDecimal]
                )

object RandomMeme200Response {
    /**
     * Creates the codec for converting RandomMeme200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomMeme200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomMeme200Response] = deriveEncoder
}
