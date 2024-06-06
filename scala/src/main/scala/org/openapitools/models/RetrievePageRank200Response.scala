package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.BigDecimal

/**
 * 
 * @param pageUnderscorerank 
 * @param position 
 * @param percentile 
 */
case class RetrievePageRank200Response(pageUnderscorerank: Option[BigDecimal],
                position: Option[Int],
                percentile: Option[BigDecimal]
                )

object RetrievePageRank200Response {
    /**
     * Creates the codec for converting RetrievePageRank200Response from and to JSON.
     */
    implicit val decoder: Decoder[RetrievePageRank200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[RetrievePageRank200Response] = deriveEncoder
}
