package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ScoreText200ResponseReadability

/**
 * 
 * @param readability 
 */
case class ScoreReadability200Response(readability: Option[ScoreText200ResponseReadability]
                )

object ScoreReadability200Response {
    /**
     * Creates the codec for converting ScoreReadability200Response from and to JSON.
     */
    implicit val decoder: Decoder[ScoreReadability200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreReadability200Response] = deriveEncoder
}
