package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20014Authors
import scala.collection.immutable.Seq

/**
 * 
 * @param authors 
 */
case class InlineResponse20014(authors: Option[Seq[InlineResponse20014Authors]]
                )

object InlineResponse20014 {
    /**
     * Creates the codec for converting InlineResponse20014 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20014] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20014] = deriveEncoder
}
