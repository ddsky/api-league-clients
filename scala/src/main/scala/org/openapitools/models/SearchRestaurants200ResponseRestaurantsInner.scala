package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal
import org.openapitools.models.SearchRestaurants200ResponseRestaurantsInnerAddress
import org.openapitools.models.SearchRestaurants200ResponseRestaurantsInnerLocalHours
import scala.collection.immutable.Seq

/**
 * 
 * @param offersUnderscorethirdUnderscorepartyUnderscoredelivery 
 * @param address 
 * @param supportsUnderscoreupcUnderscorecodes 
 * @param isUnderscoreopen 
 * @param description 
 * @param weightedUnderscoreratingUnderscorevalue 
 * @param _type 
 * @param offersUnderscorefirstUnderscorepartyUnderscoredelivery 
 * @param aggregatedUnderscoreratingUnderscorecount 
 * @param pickupUnderscoreenabled 
 * @param cuisines 
 * @param miles 
 * @param dollarUnderscoresigns 
 * @param deliveryUnderscoreenabled 
 * @param name 
 * @param phoneUnderscorenumber 
 * @param Underscoreid 
 * @param localUnderscorehours 
 */
case class SearchRestaurants200ResponseRestaurantsInner(offersUnderscorethirdUnderscorepartyUnderscoredelivery: Option[Boolean],
                address: Option[SearchRestaurants200ResponseRestaurantsInnerAddress],
                supportsUnderscoreupcUnderscorecodes: Option[Boolean],
                isUnderscoreopen: Option[Boolean],
                description: Option[String],
                weightedUnderscoreratingUnderscorevalue: Option[Int],
                _type: Option[String],
                offersUnderscorefirstUnderscorepartyUnderscoredelivery: Option[Boolean],
                aggregatedUnderscoreratingUnderscorecount: Option[Int],
                pickupUnderscoreenabled: Option[Boolean],
                cuisines: Option[Seq[String]],
                miles: Option[BigDecimal],
                dollarUnderscoresigns: Option[Int],
                deliveryUnderscoreenabled: Option[Boolean],
                name: Option[String],
                phoneUnderscorenumber: Option[BigDecimal],
                Underscoreid: Option[String],
                localUnderscorehours: Option[SearchRestaurants200ResponseRestaurantsInnerLocalHours]
                )

object SearchRestaurants200ResponseRestaurantsInner {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInner] = deriveEncoder
}
