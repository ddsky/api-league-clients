package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param title 
 * @param image 
 * @param id 
 */
case class InlineResponse200Books(title: Option[String],
                image: Option[String],
                id: Option[Int]
                )

object InlineResponse200Books {
    /**
     * Creates the codec for converting InlineResponse200Books from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200Books] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200Books] = deriveEncoder
}
