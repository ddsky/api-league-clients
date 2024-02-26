package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param abbreviationUnderscorescore 
 * @param styleUnderscorescore 
 * @param spellingUnderscorescore 
 */
case class InlineResponse20018StyleSubscores(abbreviationUnderscorescore: Option[Seq[Int]],
                styleUnderscorescore: Option[Seq[Int]],
                spellingUnderscorescore: Option[Seq[Int]]
                )

object InlineResponse20018StyleSubscores {
    /**
     * Creates the codec for converting InlineResponse20018StyleSubscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018StyleSubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018StyleSubscores] = deriveEncoder
}
