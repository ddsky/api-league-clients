package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ComputeNutrition200ResponseIngredientBreakdownInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionWeightPerServing
import org.openapitools.models.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param nutrients 
 * @param properties 
 * @param flavonoids 
 * @param ingredientUnderscorebreakdown 
 * @param caloricUnderscorebreakdown 
 * @param weightUnderscoreperUnderscoreserving 
 */
case class ComputeNutrition200Response(nutrients: Option[Seq[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner]],
                properties: Option[Seq[RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner]],
                flavonoids: Option[Seq[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]],
                ingredientUnderscorebreakdown: Option[Seq[ComputeNutrition200ResponseIngredientBreakdownInner]],
                caloricUnderscorebreakdown: Option[RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown],
                weightUnderscoreperUnderscoreserving: Option[RetrieveRecipeInformation200ResponseNutritionWeightPerServing]
                )

object ComputeNutrition200Response {
    /**
     * Creates the codec for converting ComputeNutrition200Response from and to JSON.
     */
    implicit val decoder: Decoder[ComputeNutrition200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeNutrition200Response] = deriveEncoder
}
