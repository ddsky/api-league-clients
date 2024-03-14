package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param unitUnderscoreshort 
 * @param amount 
 * @param unitUnderscorelong 
 */
case class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric(unitUnderscoreshort: Option[String],
                amount: Option[BigDecimal],
                unitUnderscorelong: Option[String]
                )

object RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric] = deriveEncoder
}
