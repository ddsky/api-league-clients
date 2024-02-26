package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param bulletUnderscorepointUnderscoreratioUnderscorescore 
 * @param imageUnderscorescore 
 * @param highlightedUnderscorewordUnderscoreratioUnderscorescore 
 * @param videoUnderscorescore 
 * @param paragraphUnderscorescore 
 * @param paragraphUnderscoreheadlineUnderscoreratioUnderscorescore 
 */
case class InlineResponse20018SkimmabilitySubscores(bulletUnderscorepointUnderscoreratioUnderscorescore: Option[Seq[Int]],
                imageUnderscorescore: Option[Seq[Int]],
                highlightedUnderscorewordUnderscoreratioUnderscorescore: Option[Seq[Int]],
                videoUnderscorescore: Option[Seq[Int]],
                paragraphUnderscorescore: Option[Seq[Int]],
                paragraphUnderscoreheadlineUnderscoreratioUnderscorescore: Option[Seq[Int]]
                )

object InlineResponse20018SkimmabilitySubscores {
    /**
     * Creates the codec for converting InlineResponse20018SkimmabilitySubscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018SkimmabilitySubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018SkimmabilitySubscores] = deriveEncoder
}
