package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param title 
 * @param author 
 * @param poem 
 */
case class RandomPoem200Response(title: Option[String],
                author: Option[String],
                poem: Option[String]
                )

object RandomPoem200Response {
    /**
     * Creates the codec for converting RandomPoem200Response from and to JSON.
     */
    implicit val decoder: Decoder[RandomPoem200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RandomPoem200Response] = deriveEncoder
}
