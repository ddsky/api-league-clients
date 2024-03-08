package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param publishUnderscoredate 
 */
case class ExtractPublishDate200Response(publishUnderscoredate: Option[String]
                )

object ExtractPublishDate200Response {
    /**
     * Creates the codec for converting ExtractPublishDate200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractPublishDate200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractPublishDate200Response] = deriveEncoder
}
