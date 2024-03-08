package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param original 
 * @param singular 
 */
case class SingularizeWord200Response(original: Option[String],
                singular: Option[String]
                )

object SingularizeWord200Response {
    /**
     * Creates the codec for converting SingularizeWord200Response from and to JSON.
     */
    implicit val decoder: Decoder[SingularizeWord200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SingularizeWord200Response] = deriveEncoder
}
