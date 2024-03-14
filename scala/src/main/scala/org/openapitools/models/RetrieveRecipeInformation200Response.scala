package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal
import org.openapitools.models.RetrieveRecipeInformation200ResponseCredits
import org.openapitools.models.RetrieveRecipeInformation200ResponseDietaryProperties
import org.openapitools.models.RetrieveRecipeInformation200ResponseIngredientsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseInstructionsInner
import org.openapitools.models.RetrieveRecipeInformation200ResponseNutrition
import org.openapitools.models.RetrieveRecipeInformation200ResponseScores
import org.openapitools.models.RetrieveRecipeInformation200ResponseTaste
import org.openapitools.models.RetrieveRecipeInformation200ResponseTimes
import scala.collection.immutable.Seq

/**
 * 
 * @param id 
 * @param title 
 * @param servings 
 * @param images 
 * @param dietaryUnderscoreproperties 
 * @param priceUnderscoreperUnderscoreserving 
 * @param times 
 * @param nutrition 
 * @param taste 
 * @param cuisines 
 * @param mealUnderscoretypes 
 * @param occasions 
 * @param ingredients 
 * @param instructions 
 * @param credits 
 * @param scores 
 */
case class RetrieveRecipeInformation200Response(id: Option[Int],
                title: Option[String],
                servings: Option[Int],
                images: Option[Seq[String]],
                dietaryUnderscoreproperties: Option[RetrieveRecipeInformation200ResponseDietaryProperties],
                priceUnderscoreperUnderscoreserving: Option[BigDecimal],
                times: Option[RetrieveRecipeInformation200ResponseTimes],
                nutrition: Option[RetrieveRecipeInformation200ResponseNutrition],
                taste: Option[RetrieveRecipeInformation200ResponseTaste],
                cuisines: Option[Seq[String]],
                mealUnderscoretypes: Option[Seq[String]],
                occasions: Option[Seq[String]],
                ingredients: Option[Seq[RetrieveRecipeInformation200ResponseIngredientsInner]],
                instructions: Option[Seq[RetrieveRecipeInformation200ResponseInstructionsInner]],
                credits: Option[RetrieveRecipeInformation200ResponseCredits],
                scores: Option[RetrieveRecipeInformation200ResponseScores]
                )

object RetrieveRecipeInformation200Response {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200Response from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200Response] = deriveEncoder
}
