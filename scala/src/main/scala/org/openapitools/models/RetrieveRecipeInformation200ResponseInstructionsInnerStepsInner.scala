package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param number 
 * @param ingredients 
 * @param equipment 
 * @param step 
 */
case class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner(number: Option[Int],
                ingredients: Option[Seq[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner]],
                equipment: Option[Seq[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner]],
                step: Option[String]
                )

object RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner] = deriveEncoder
}
