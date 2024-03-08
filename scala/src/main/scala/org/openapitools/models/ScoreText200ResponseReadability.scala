package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ScoreText200ResponseReadabilityMainscores
import org.openapitools.models.ScoreText200ResponseReadabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class ScoreText200ResponseReadability(mainscores: Option[ScoreText200ResponseReadabilityMainscores],
                subscores: Option[ScoreText200ResponseReadabilitySubscores]
                )

object ScoreText200ResponseReadability {
    /**
     * Creates the codec for converting ScoreText200ResponseReadability from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseReadability] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseReadability] = deriveEncoder
}
