package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchRecipes200ResponseRecipesInnerNutrition
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 * @param nutrition 
 * @param id 
 * @param title 
 */
case class SearchRecipes200ResponseRecipesInner(images: Option[Seq[String]],
                nutrition: Option[SearchRecipes200ResponseRecipesInnerNutrition],
                id: Option[Int],
                title: Option[String]
                )

object SearchRecipes200ResponseRecipesInner {
    /**
     * Creates the codec for converting SearchRecipes200ResponseRecipesInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200ResponseRecipesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200ResponseRecipesInner] = deriveEncoder
}
