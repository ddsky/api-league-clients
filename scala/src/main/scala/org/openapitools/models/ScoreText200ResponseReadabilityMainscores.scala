package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param totalUnderscorepossible 
 * @param total 
 */
case class ScoreText200ResponseReadabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[Int]
                )

object ScoreText200ResponseReadabilityMainscores {
    /**
     * Creates the codec for converting ScoreText200ResponseReadabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseReadabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseReadabilityMainscores] = deriveEncoder
}
