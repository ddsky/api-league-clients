package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param startUnderscoreposition 
 * @param image 
 * @param _type 
 * @param value 
 * @param endUnderscoreposition 
 */
case class InlineResponse20027Entities(startUnderscoreposition: Option[Int],
                image: Option[String],
                _type: Option[String],
                value: Option[String],
                endUnderscoreposition: Option[Int]
                )

object InlineResponse20027Entities {
    /**
     * Creates the codec for converting InlineResponse20027Entities from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20027Entities] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20027Entities] = deriveEncoder
}
