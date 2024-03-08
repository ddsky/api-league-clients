package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param value 
 */
case class ReadKeyValueFromStore200Response(value: Option[String]
                )

object ReadKeyValueFromStore200Response {
    /**
     * Creates the codec for converting ReadKeyValueFromStore200Response from and to JSON.
     */
    implicit val decoder: Decoder[ReadKeyValueFromStore200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ReadKeyValueFromStore200Response] = deriveEncoder
}
