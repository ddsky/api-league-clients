package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20027Entities
import scala.collection.immutable.Seq

/**
 * 
 * @param entities 
 */
case class InlineResponse20027(entities: Option[Seq[InlineResponse20027Entities]]
                )

object InlineResponse20027 {
    /**
     * Creates the codec for converting InlineResponse20027 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20027] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20027] = deriveEncoder
}
