package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param fattiness 
 * @param spiciness 
 * @param saltiness 
 * @param bitterness 
 * @param savoriness 
 * @param sweetness 
 * @param sourness 
 */
case class RetrieveRecipeInformation200ResponseTaste(fattiness: Option[BigDecimal],
                spiciness: Option[Int],
                saltiness: Option[Int],
                bitterness: Option[BigDecimal],
                savoriness: Option[BigDecimal],
                sweetness: Option[BigDecimal],
                sourness: Option[BigDecimal]
                )

object RetrieveRecipeInformation200ResponseTaste {
    /**
     * Creates the codec for converting RetrieveRecipeInformation200ResponseTaste from and to JSON.
     */
    implicit val decoder: Decoder[RetrieveRecipeInformation200ResponseTaste] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrieveRecipeInformation200ResponseTaste] = deriveEncoder
}
