package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ScoreText200ResponseSkimmabilityMainscores
import org.openapitools.models.ScoreText200ResponseSkimmabilitySubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class ScoreText200ResponseSkimmability(mainscores: Option[ScoreText200ResponseSkimmabilityMainscores],
                subscores: Option[ScoreText200ResponseSkimmabilitySubscores]
                )

object ScoreText200ResponseSkimmability {
    /**
     * Creates the codec for converting ScoreText200ResponseSkimmability from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseSkimmability] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseSkimmability] = deriveEncoder
}
