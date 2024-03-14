package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param metaUnderscorescore 
 * @param weightUnderscorewatcherUnderscoresmartUnderscorepoints 
 * @param healthUnderscorescore 
 */
case class RetrieveRecipeInformation200ResponseScores(metaUnderscorescore: Option[BigDecimal],
                weightUnderscorewatcherUnderscoresmartUnderscorepoints: Option[Int],
                healthUnderscorescore: Option[Int]
                )

object RetrieveRecipeInformation200ResponseScores {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseScores from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseScores] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseScores] = deriveEncoder
}
