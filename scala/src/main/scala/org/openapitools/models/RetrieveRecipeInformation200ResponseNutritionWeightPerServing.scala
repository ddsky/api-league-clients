package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param amount 
 * @param unit 
 */
case class RetrieveRecipeInformation200ResponseNutritionWeightPerServing(amount: Option[Int],
                unit: Option[String]
                )

object RetrieveRecipeInformation200ResponseNutritionWeightPerServing {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutritionWeightPerServing from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutritionWeightPerServing] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutritionWeightPerServing] = deriveEncoder
}
