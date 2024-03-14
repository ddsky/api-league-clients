package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 */
case class SearchRecipes200ResponseRecipesInnerNutrition(nutrients: Option[Seq[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]]
                )

object SearchRecipes200ResponseRecipesInnerNutrition {
    /**
     * Creates the codec for converting SearchRecipes200ResponseRecipesInnerNutrition from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200ResponseRecipesInnerNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200ResponseRecipesInnerNutrition] = deriveEncoder
}
