package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param _type 
 * @param description 
 * @param url 
 */
case class SearchMemes200ResponseMemesInner(_type: Option[String],
                description: Option[String],
                url: Option[String]
                )

object SearchMemes200ResponseMemesInner {
    /**
     * Creates the codec for converting SearchMemes200ResponseMemesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchMemes200ResponseMemesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchMemes200ResponseMemesInner] = deriveEncoder
}
