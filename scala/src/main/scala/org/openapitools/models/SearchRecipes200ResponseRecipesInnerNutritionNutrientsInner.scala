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
 * @param amount 
 * @param unit 
 */
case class SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(name: Option[String],
                amount: Option[BigDecimal],
                unit: Option[String]
                )

object SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner {
    /**
     * Creates the codec for converting SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner] = deriveEncoder
}
