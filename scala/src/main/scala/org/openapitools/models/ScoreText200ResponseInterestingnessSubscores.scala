package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import scala.collection.immutable.Seq

/**
 * 
 * @param titleUnderscoreratingUnderscorescore 
 * @param quoteUnderscorescore 
 * @param lengthUnderscorescore 
 * @param linkUnderscorescore 
 * @param googleUnderscorehitsUnderscorescore 
 */
case class ScoreText200ResponseInterestingnessSubscores(titleUnderscoreratingUnderscorescore: Option[Seq[Int]],
                quoteUnderscorescore: Option[Seq[Int]],
                lengthUnderscorescore: Option[Seq[Int]],
                linkUnderscorescore: Option[Seq[Int]],
                googleUnderscorehitsUnderscorescore: Option[Seq[Int]]
                )

object ScoreText200ResponseInterestingnessSubscores {
    /**
     * Creates the codec for converting ScoreText200ResponseInterestingnessSubscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseInterestingnessSubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseInterestingnessSubscores] = deriveEncoder
}
