package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param language 
 * @param confidence 
 */
case class DetectLanguage200ResponseInner(language: Option[String],
                confidence: Option[BigDecimal]
                )

object DetectLanguage200ResponseInner {
    /**
     * Creates the codec for converting DetectLanguage200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[DetectLanguage200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectLanguage200ResponseInner] = deriveEncoder
}
