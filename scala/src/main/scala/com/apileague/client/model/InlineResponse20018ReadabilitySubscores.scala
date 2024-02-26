package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

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
case class InlineResponse20018ReadabilitySubscores(readingUnderscoretimeUnderscoreseconds: Option[Int],
                forcast: Option[Int],
                flesch: Option[BigDecimal],
                smog: Option[BigDecimal],
                ari: Option[BigDecimal],
                lix: Option[Int],
                colemanUnderscoreliau: Option[BigDecimal],
                kincaid: Option[BigDecimal],
                fog: Option[BigDecimal]
                )

object InlineResponse20018ReadabilitySubscores {
    /**
     * Creates the codec for converting InlineResponse20018ReadabilitySubscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20018ReadabilitySubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20018ReadabilitySubscores] = deriveEncoder
}
