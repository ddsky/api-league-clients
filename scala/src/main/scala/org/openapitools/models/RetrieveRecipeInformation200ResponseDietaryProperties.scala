package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import scala.collection.immutable.Seq

/**
 * 
 * @param lowUnderscorefodmap 
 * @param vegetarian 
 * @param vegan 
 * @param glutenUnderscorefree 
 * @param dairyUnderscorefree 
 * @param gaps 
 * @param diets 
 */
case class RetrieveRecipeInformation200ResponseDietaryProperties(lowUnderscorefodmap: Option[Boolean],
                vegetarian: Option[Boolean],
                vegan: Option[Boolean],
                glutenUnderscorefree: Option[Boolean],
                dairyUnderscorefree: Option[Boolean],
                gaps: Option[String],
                diets: Option[Seq[String]]
                )

object RetrieveRecipeInformation200ResponseDietaryProperties {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseDietaryProperties from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseDietaryProperties] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseDietaryProperties] = deriveEncoder
}
