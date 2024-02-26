package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20018Document
import com.apileague.client.model.InlineResponse20018Sentences
import scala.collection.immutable.Seq

/**
 * 
 * @param document 
 * @param sentences 
 */
case class InlineResponse20018(document: Option[InlineResponse20018Document],
                sentences: Option[Seq[InlineResponse20018Sentences]]
                )

object InlineResponse20018 {
    /**
     * Creates the codec for converting InlineResponse20018 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018] = deriveEncoder
}
