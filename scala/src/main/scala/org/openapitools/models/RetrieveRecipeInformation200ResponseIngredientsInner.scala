package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal
import org.openapitools.models.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
import scala.collection.immutable.Seq

/**
 * 
 * @param image 
 * @param nameUnderscoreclean 
 * @param amount 
 * @param unit 
 * @param measures 
 * @param original 
 * @param meta 
 * @param originalUnderscorename 
 * @param name 
 * @param id 
 * @param aisle 
 * @param consistency 
 */
case class RetrieveRecipeInformation200ResponseIngredientsInner(image: Option[String],
                nameUnderscoreclean: Option[String],
                amount: Option[BigDecimal],
                unit: Option[String],
                measures: Option[RetrieveRecipeInformation200ResponseIngredientsInnerMeasures],
                original: Option[String],
                meta: Option[Seq[String]],
                originalUnderscorename: Option[String],
                name: Option[String],
                id: Option[Int],
                aisle: Option[String],
                consistency: Option[String]
                )

object RetrieveRecipeInformation200ResponseIngredientsInner {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseIngredientsInner from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseIngredientsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseIngredientsInner] = deriveEncoder
}
