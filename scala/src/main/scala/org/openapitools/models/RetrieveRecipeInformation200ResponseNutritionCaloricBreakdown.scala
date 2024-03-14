package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param percentUnderscorefat 
 * @param percentUnderscorecarbs 
 * @param percentUnderscoreprotein 
 */
case class RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown(percentUnderscorefat: Option[BigDecimal],
                percentUnderscorecarbs: Option[BigDecimal],
                percentUnderscoreprotein: Option[BigDecimal]
                )

object RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown] = deriveEncoder
}
