package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param title 
 * @param summary 
 * @param url 
 */
case class SearchWeb200ResponseResultsInner(title: Option[String],
                summary: Option[String],
                url: Option[String]
                )

object SearchWeb200ResponseResultsInner {
    /**
     * Creates the codec for converting SearchWeb200ResponseResultsInner from and to JSON.
     */
    implicit val decoder: Decoder[SearchWeb200ResponseResultsInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[SearchWeb200ResponseResultsInner] = deriveEncoder
}
