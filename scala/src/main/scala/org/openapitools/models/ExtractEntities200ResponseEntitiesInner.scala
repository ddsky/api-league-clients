package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param startUnderscoreposition 
 * @param image 
 * @param _type 
 * @param value 
 * @param endUnderscoreposition 
 */
case class ExtractEntities200ResponseEntitiesInner(startUnderscoreposition: Option[Int],
                image: Option[String],
                _type: Option[String],
                value: Option[String],
                endUnderscoreposition: Option[Int]
                )

object ExtractEntities200ResponseEntitiesInner {
    /**
     * Creates the codec for converting ExtractEntities200ResponseEntitiesInner from and to JSON.
     */
    implicit val decoder: Decoder[ExtractEntities200ResponseEntitiesInner] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractEntities200ResponseEntitiesInner] = deriveEncoder
}
