package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import scala.collection.immutable.Seq

/**
 * 
 * @param abbreviationUnderscorescore 
 * @param styleUnderscorescore 
 * @param spellingUnderscorescore 
 */
case class ScoreText200ResponseStyleSubscores(abbreviationUnderscorescore: Option[Seq[Int]],
                styleUnderscorescore: Option[Seq[Int]],
                spellingUnderscorescore: Option[Seq[Int]]
                )

object ScoreText200ResponseStyleSubscores {
    /**
     * Creates the codec for converting ScoreText200ResponseStyleSubscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseStyleSubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseStyleSubscores] = deriveEncoder
}
