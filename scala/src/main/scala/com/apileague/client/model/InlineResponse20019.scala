package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal
import com.apileague.client.model.InlineResponse20019Interestingness
import com.apileague.client.model.InlineResponse20019Readability
import com.apileague.client.model.InlineResponse20019Skimmability
import com.apileague.client.model.InlineResponse20019Style

/**
 * 
 * @param numberUnderscoreofUnderscorewords 
 * @param numberUnderscoreofUnderscoresentences 
 * @param readability 
 * @param skimmability 
 * @param interestingness 
 * @param style 
 * @param totalUnderscorescore 
 */
case class InlineResponse20019(numberUnderscoreofUnderscorewords: Option[Int],
                numberUnderscoreofUnderscoresentences: Option[Int],
                readability: Option[InlineResponse20019Readability],
                skimmability: Option[InlineResponse20019Skimmability],
                interestingness: Option[InlineResponse20019Interestingness],
                style: Option[InlineResponse20019Style],
                totalUnderscorescore: Option[BigDecimal]
                )

object InlineResponse20019 {
    /**
     * Creates the codec for converting InlineResponse20019 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20019] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20019] = deriveEncoder
}
