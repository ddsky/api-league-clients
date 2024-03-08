package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ScoreText200ResponseReadabilityMainscores
import org.openapitools.models.ScoreText200ResponseStyleSubscores

/**
 * 
 * @param mainscores 
 * @param subscores 
 */
case class ScoreText200ResponseStyle(mainscores: Option[ScoreText200ResponseReadabilityMainscores],
                subscores: Option[ScoreText200ResponseStyleSubscores]
                )

object ScoreText200ResponseStyle {
    /**
     * Creates the codec for converting ScoreText200ResponseStyle from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseStyle] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseStyle] = deriveEncoder
}
