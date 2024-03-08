package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param status 
 */
case class StoreKeyValueGET200Response(status: Option[String]
                )

object StoreKeyValueGET200Response {
    /**
     * Creates the codec for converting StoreKeyValueGET200Response from and to JSON.
     */
    implicit val decoder: Decoder[StoreKeyValueGET200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[StoreKeyValueGET200Response] = deriveEncoder
}
