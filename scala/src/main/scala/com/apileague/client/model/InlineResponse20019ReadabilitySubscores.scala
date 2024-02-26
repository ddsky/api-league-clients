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
case class InlineResponse20019ReadabilitySubscores(readingUnderscoretimeUnderscoreseconds: Option[Int],
                forcast: Option[BigDecimal],
                flesch: Option[BigDecimal],
                smog: Option[BigDecimal],
                ari: Option[BigDecimal],
                lix: Option[BigDecimal],
                colemanUnderscoreliau: Option[BigDecimal],
                kincaid: Option[BigDecimal],
                fog: Option[BigDecimal]
                )

object InlineResponse20019ReadabilitySubscores {
    /**
     * Creates the codec for converting InlineResponse20019ReadabilitySubscores from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019ReadabilitySubscores] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019ReadabilitySubscores] = deriveEncoder
}
