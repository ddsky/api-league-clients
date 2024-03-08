package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.DetectSentiment200ResponseDocument
import org.openapitools.models.DetectSentiment200ResponseSentencesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param document 
 * @param sentences 
 */
case class DetectSentiment200Response(document: Option[DetectSentiment200ResponseDocument],
                sentences: Option[Seq[DetectSentiment200ResponseSentencesInner]]
                )

object DetectSentiment200Response {
    /**
     * Creates the codec for converting DetectSentiment200Response from and to JSON.
     */
    implicit val decoder: Decoder[DetectSentiment200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[DetectSentiment200Response] = deriveEncoder
}
