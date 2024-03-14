package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.SearchRecipes200ResponseRecipesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param recipes 
 * @param totalUnderscoreresults 
 */
case class SearchRecipes200Response(offset: Option[Int],
                number: Option[Int],
                recipes: Option[Seq[SearchRecipes200ResponseRecipesInner]],
                totalUnderscoreresults: Option[Int]
                )

object SearchRecipes200Response {
    /**
     * Creates the codec for converting SearchRecipes200Response from and to JSON.
     */
    implicit val decoder: Decoder[SearchRecipes200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRecipes200Response] = deriveEncoder
}
