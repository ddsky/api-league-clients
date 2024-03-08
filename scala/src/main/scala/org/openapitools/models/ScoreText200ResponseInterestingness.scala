package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ScoreText200ResponseInterestingnessSubscores
import org.openapitools.models.ScoreText200ResponseSkimmabilityMainscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class ScoreText200ResponseInterestingness(mainscores: Option[ScoreText200ResponseSkimmabilityMainscores],
                subscores: Option[ScoreText200ResponseInterestingnessSubscores]
                )

object ScoreText200ResponseInterestingness {
    /**
     * Creates the codec for converting ScoreText200ResponseInterestingness from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseInterestingness] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseInterestingness] = deriveEncoder
}
