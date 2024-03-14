package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param name 
 * @param image 
 * @param id 
 */
case class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(name: Option[String],
                image: Option[String],
                id: Option[Int]
                )

object RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner] = deriveEncoder
}
