package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param totalUnderscorepossible 
 * @param total 
 */
case class ScoreText200ResponseSkimmabilityMainscores(totalUnderscorepossible: Option[Int],
                total: Option[BigDecimal]
                )

object ScoreText200ResponseSkimmabilityMainscores {
    /**
     * Creates the codec for converting ScoreText200ResponseSkimmabilityMainscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseSkimmabilityMainscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseSkimmabilityMainscores] = deriveEncoder
}
