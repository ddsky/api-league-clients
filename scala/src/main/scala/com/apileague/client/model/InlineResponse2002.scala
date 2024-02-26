package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse2002News
import scala.collection.immutable.Seq

/**
 * 
 * @param offset 
 * @param number 
 * @param available 
 * @param news 
 */
case class InlineResponse2002(offset: Option[Int],
                number: Option[Int],
                available: Option[Int],
                news: Option[Seq[InlineResponse2002News]]
                )

object InlineResponse2002 {
    /**
     * Creates the codec for converting InlineResponse2002 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002] = deriveEncoder
}
