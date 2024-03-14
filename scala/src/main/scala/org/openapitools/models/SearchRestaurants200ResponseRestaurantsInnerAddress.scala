package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param zipcode 
 * @param country 
 * @param city 
 * @param latitude 
 * @param lon 
 * @param streetUnderscoreaddrUnderscore2 
 * @param state 
 * @param streetUnderscoreaddr 
 * @param lat 
 * @param longitude 
 */
case class SearchRestaurants200ResponseRestaurantsInnerAddress(zipcode: Option[String],
                country: Option[String],
                city: Option[String],
                latitude: Option[BigDecimal],
                lon: Option[BigDecimal],
                streetUnderscoreaddrUnderscore2: Option[String],
                state: Option[String],
                streetUnderscoreaddr: Option[String],
                lat: Option[BigDecimal],
                longitude: Option[BigDecimal]
                )

object SearchRestaurants200ResponseRestaurantsInnerAddress {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInnerAddress from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInnerAddress] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInnerAddress] = deriveEncoder
}
