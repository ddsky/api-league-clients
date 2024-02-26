package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param targetUnderscoreamount 
 * @param targetUnderscoreunit 
 */
case class InlineResponse20030(targetUnderscoreamount: Option[BigDecimal],
                targetUnderscoreunit: Option[String]
                )

object InlineResponse20030 {
    /**
     * Creates the codec for converting InlineResponse20030 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20030] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20030] = deriveEncoder
}
