package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 * @param id 
 * @param nutrients 
 */
case class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(name: Option[String],
                amount: Option[BigDecimal],
                unit: Option[String],
                id: Option[Int],
                nutrients: Option[Seq[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner]]
                )

object RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner] = deriveEncoder
}
