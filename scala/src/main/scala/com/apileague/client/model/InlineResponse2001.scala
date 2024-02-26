package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse200Books
import scala.collection.immutable.Seq

/**
 * 
 * @param similarUnderscorebooks 
 */
case class InlineResponse2001(similarUnderscorebooks: Option[Seq[InlineResponse200Books]]
                )

object InlineResponse2001 {
    /**
     * Creates the codec for converting InlineResponse2001 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2001] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2001] = deriveEncoder
}
