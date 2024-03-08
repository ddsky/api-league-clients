package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ExtractAuthors200ResponseAuthorsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param authors 
 */
case class ExtractAuthors200Response(authors: Option[Seq[ExtractAuthors200ResponseAuthorsInner]]
                )

object ExtractAuthors200Response {
    /**
     * Creates the codec for converting ExtractAuthors200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractAuthors200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractAuthors200Response] = deriveEncoder
}
