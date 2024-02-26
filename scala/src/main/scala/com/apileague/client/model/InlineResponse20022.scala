package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param synonyms 
 */
case class InlineResponse20022(synonyms: Option[Seq[String]]
                )

object InlineResponse20022 {
    /**
     * Creates the codec for converting InlineResponse20022 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20022] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20022] = deriveEncoder
}
