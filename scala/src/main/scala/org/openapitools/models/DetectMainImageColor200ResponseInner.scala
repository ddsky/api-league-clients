package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param specificUnderscorecolor 
 * @param mainUnderscorecolor 
 * @param hexUnderscorecode 
 */
case class DetectMainImageColor200ResponseInner(specificUnderscorecolor: Option[String],
                mainUnderscorecolor: Option[String],
                hexUnderscorecode: Option[String]
                )

object DetectMainImageColor200ResponseInner {
    /**
     * Creates the codec for converting DetectMainImageColor200ResponseInner from and to JSON.
     */
    implicit val decoder: Decoder[DetectMainImageColor200ResponseInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectMainImageColor200ResponseInner] = deriveEncoder
}
