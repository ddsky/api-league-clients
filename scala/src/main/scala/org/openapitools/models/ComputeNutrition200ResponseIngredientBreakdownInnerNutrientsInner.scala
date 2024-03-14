package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param name 
 * @param percentUnderscoreofUnderscoredailyUnderscoreneeds 
 * @param amount 
 * @param unit 
 */
case class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(name: Option[String],
                percentUnderscoreofUnderscoredailyUnderscoreneeds: Option[Int],
                amount: Option[Int],
                unit: Option[String]
                )

object ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
    /**
     * Creates the codec for converting ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner from and to JSON.
     */
    implicit val decoder: Decoder[ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner] = deriveEncoder
}
