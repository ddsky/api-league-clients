package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import scala.collection.immutable.Seq

/**
 * 
 * @param synonyms 
 */
case class ListWordSynonyms200Response(synonyms: Option[Seq[String]]
                )

object ListWordSynonyms200Response {
    /**
     * Creates the codec for converting ListWordSynonyms200Response from and to JSON.
     */
    implicit val decoder: Decoder[ListWordSynonyms200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ListWordSynonyms200Response] = deriveEncoder
}
