package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param title 
 * @param image 
 * @param id 
 */
case class SearchBooks200ResponseBooksInner(title: Option[String],
                image: Option[String],
                id: Option[Int]
                )

object SearchBooks200ResponseBooksInner {
    /**
     * Creates the codec for converting SearchBooks200ResponseBooksInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchBooks200ResponseBooksInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchBooks200ResponseBooksInner] = deriveEncoder
}
