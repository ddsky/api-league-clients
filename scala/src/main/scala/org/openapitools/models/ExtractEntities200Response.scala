package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ExtractEntities200ResponseEntitiesInner
import scala.collection.immutable.Seq

/**
 * 
 * @param entities 
 */
case class ExtractEntities200Response(entities: Option[Seq[ExtractEntities200ResponseEntitiesInner]]
                )

object ExtractEntities200Response {
    /**
     * Creates the codec for converting ExtractEntities200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractEntities200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractEntities200Response] = deriveEncoder
}
