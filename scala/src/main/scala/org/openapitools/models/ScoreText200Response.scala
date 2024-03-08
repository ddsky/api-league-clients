package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal
import org.openapitools.models.ScoreText200ResponseInterestingness
import org.openapitools.models.ScoreText200ResponseReadability
import org.openapitools.models.ScoreText200ResponseSkimmability
import org.openapitools.models.ScoreText200ResponseStyle

/**
 * 
 * @param numberUnderscoreofUnderscorewords 
 * @param numberUnderscoreofUnderscoresentences 
 * @param readability 
 * @param skimmability 
 * @param interestingness 
 * @param style 
 * @param totalUnderscorescore 
 */
case class ScoreText200Response(numberUnderscoreofUnderscorewords: Option[Int],
                numberUnderscoreofUnderscoresentences: Option[Int],
                readability: Option[ScoreText200ResponseReadability],
                skimmability: Option[ScoreText200ResponseSkimmability],
                interestingness: Option[ScoreText200ResponseInterestingness],
                style: Option[ScoreText200ResponseStyle],
                totalUnderscorescore: Option[BigDecimal]
                )

object ScoreText200Response {
    /**
     * Creates the codec for converting ScoreText200Response from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200Response] = deriveEncoder
}
