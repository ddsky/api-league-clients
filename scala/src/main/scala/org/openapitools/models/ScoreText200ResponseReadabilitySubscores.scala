package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param readingUnderscoretimeUnderscoreseconds 
 * @param forcast 
 * @param flesch 
 * @param smog 
 * @param ari 
 * @param lix 
 * @param colemanUnderscoreliau 
 * @param kincaid 
 * @param fog 
 */
case class ScoreText200ResponseReadabilitySubscores(readingUnderscoretimeUnderscoreseconds: Option[Int],
                forcast: Option[BigDecimal],
                flesch: Option[BigDecimal],
                smog: Option[BigDecimal],
                ari: Option[BigDecimal],
                lix: Option[BigDecimal],
                colemanUnderscoreliau: Option[BigDecimal],
                kincaid: Option[BigDecimal],
                fog: Option[BigDecimal]
                )

object ScoreText200ResponseReadabilitySubscores {
    /**
     * Creates the codec for converting ScoreText200ResponseReadabilitySubscores from and to JSON.
     */
    implicit val decoder: Decoder[ScoreText200ResponseReadabilitySubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[ScoreText200ResponseReadabilitySubscores] = deriveEncoder
}
