package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
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
case class ScoreText200ResponseSkimmabilitySubscores(bulletUnderscorepointUnderscoreratioUnderscorescore: Option[Seq[Int]],
                imageUnderscorescore: Option[Seq[Int]],
                highlightedUnderscorewordUnderscoreratioUnderscorescore: Option[Seq[Int]],
                videoUnderscorescore: Option[Seq[Int]],
                paragraphUnderscorescore: Option[Seq[Int]],
                paragraphUnderscoreheadlineUnderscoreratioUnderscorescore: Option[Seq[Int]]
                )

object ScoreText200ResponseSkimmabilitySubscores {
    /**
     * Creates the codec for converting ScoreText200ResponseSkimmabilitySubscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseSkimmabilitySubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseSkimmabilitySubscores] = deriveEncoder
}
