package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param name 
 * @param probabilityUnderscoremale 
 */
case class DetectGenderByName200Response(name: Option[String],
                probabilityUnderscoremale: Option[BigDecimal]
                )

object DetectGenderByName200Response {
    /**
     * Creates the codec for converting DetectGenderByName200Response from and to JSON.
     */
    implicit val decoder: Decoder[DetectGenderByName200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectGenderByName200Response] = deriveEncoder
}
