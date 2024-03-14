package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param name 
 * @param percentUnderscoreofUnderscoredailyUnderscoreneeds 
 * @param amount 
 * @param unit 
 */
case class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner(name: Option[String],
                percentUnderscoreofUnderscoredailyUnderscoreneeds: Option[BigDecimal],
                amount: Option[BigDecimal],
                unit: Option[String]
                )

object RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner] = deriveEncoder
}
