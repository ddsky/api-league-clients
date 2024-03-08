package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param targetUnderscoreamount 
 * @param targetUnderscoreunit 
 */
case class ConvertUnits200Response(targetUnderscoreamount: Option[BigDecimal],
                targetUnderscoreunit: Option[String]
                )

object ConvertUnits200Response {
    /**
     * Creates the codec for converting ConvertUnits200Response from and to JSON.
     */
    implicit val decoder: Decoder[ConvertUnits200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ConvertUnits200Response] = deriveEncoder
}
