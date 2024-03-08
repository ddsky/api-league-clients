package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param link 
 * @param name 
 */
case class ExtractAuthors200ResponseAuthorsInner(link: Option[String],
                name: Option[String]
                )

object ExtractAuthors200ResponseAuthorsInner {
    /**
     * Creates the codec for converting ExtractAuthors200ResponseAuthorsInner from and to JSON.
     */
    implicit val decoder: Decoder[ExtractAuthors200ResponseAuthorsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractAuthors200ResponseAuthorsInner] = deriveEncoder
}
