package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param _type 
 * @param description 
 * @param url 
 */
case class InlineResponse2005Memes(_type: Option[String],
                description: Option[String],
                url: Option[String]
                )

object InlineResponse2005Memes {
    /**
     * Creates the codec for converting InlineResponse2005Memes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2005Memes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2005Memes] = deriveEncoder
}
