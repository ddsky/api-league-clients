package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse200Books
import scala.collection.immutable.Seq

/**
 * 
 * @param available 
 * @param number 
 * @param offset 
 * @param books 
 */
case class InlineResponse200(available: Option[Int],
                number: Option[Int],
                offset: Option[Int],
                books: Option[Seq[InlineResponse200Books]]
                )

object InlineResponse200 {
    /**
     * Creates the codec for converting InlineResponse200 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse200] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse200] = deriveEncoder
}
