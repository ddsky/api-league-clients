package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionWeightPerServing
import org.openapitools.models.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param weightUnderscoreperUnderscoreserving 
 * @param caloricUnderscorebreakdown 
 * @param flavonoids 
 * @param ingredientUnderscorebreakdown 
 * @param properties 
 * @param nutrients 
 */
case class RetrieveRecipeInformation200ResponseNutrition(weightUnderscoreperUnderscoreserving: Option[RetrieveRecipeInformation200ResponseNutritionWeightPerServing],
                caloricUnderscorebreakdown: Option[RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown],
                flavonoids: Option[Seq[RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner]],
                ingredientUnderscorebreakdown: Option[Seq[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner]],
                properties: Option[Seq[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]],
                nutrients: Option[Seq[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner]]
                )

object RetrieveRecipeInformation200ResponseNutrition {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutrition from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutrition] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutrition] = deriveEncoder
}
