package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
import scala.collection.immutable.Seq

/**
 * 
 * @param name 
 * @param steps 
 */
case class RetrieveRecipeInformation200ResponseInstructionsInner(name: Option[String],
                steps: Option[Seq[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner]]
                )

object RetrieveRecipeInformation200ResponseInstructionsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseInstructionsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseInstructionsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseInstructionsInner] = deriveEncoder
}
