package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param sunday 
 * @param saturday 
 * @param tuesday 
 * @param thursday 
 * @param friday 
 * @param wednesday 
 * @param monday 
 */
case class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(sunday: Option[String],
                saturday: Option[String],
                tuesday: Option[String],
                thursday: Option[String],
                friday: Option[String],
                wednesday: Option[String],
                monday: Option[String]
                )

object SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
    /**
     * Creates the codec for converting SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational from and to JSON.
     */
    implicit val decoder: Decoder[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational] = deriveEncoder
}
