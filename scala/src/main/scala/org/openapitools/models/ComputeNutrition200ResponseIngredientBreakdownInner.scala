package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 * @param id 
 * @param nutrients 
 */
case class ComputeNutrition200ResponseIngredientBreakdownInner(name: Option[String],
                amount: Option[Int],
                unit: Option[String],
                id: Option[Int],
                nutrients: Option[Seq[ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner]]
                )

object ComputeNutrition200ResponseIngredientBreakdownInner {
    /**
     * Creates the codec for converting ComputeNutrition200ResponseIngredientBreakdownInner from and to JSON.
     */
    implicit val decoder: Decoder[ComputeNutrition200ResponseIngredientBreakdownInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputeNutrition200ResponseIngredientBreakdownInner] = deriveEncoder
}
