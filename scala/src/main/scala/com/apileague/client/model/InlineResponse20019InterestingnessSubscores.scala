package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param titleUnderscoreratingUnderscorescore 
 * @param quoteUnderscorescore 
 * @param lengthUnderscorescore 
 * @param linkUnderscorescore 
 * @param googleUnderscorehitsUnderscorescore 
 */
case class InlineResponse20019InterestingnessSubscores(titleUnderscoreratingUnderscorescore: Option[Seq[Int]],
                quoteUnderscorescore: Option[Seq[Int]],
                lengthUnderscorescore: Option[Seq[Int]],
                linkUnderscorescore: Option[Seq[Int]],
                googleUnderscorehitsUnderscorescore: Option[Seq[Int]]
                )

object InlineResponse20019InterestingnessSubscores {
    /**
     * Creates the codec for converting InlineResponse20019InterestingnessSubscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019InterestingnessSubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019InterestingnessSubscores] = deriveEncoder
}
