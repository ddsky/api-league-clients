package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param name 
 * @param amount 
 * @param unit 
 */
case class RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(name: Option[String],
                amount: Option[Int],
                unit: Option[String]
                )

object RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner] = deriveEncoder
}
