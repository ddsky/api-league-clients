package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric

/**
 * 
 * @param metric 
 * @param us 
 */
case class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures(metric: Option[RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric],
                us: Option[RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric]
                )

object RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseIngredientsInnerMeasures from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseIngredientsInnerMeasures] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseIngredientsInnerMeasures] = deriveEncoder
}
