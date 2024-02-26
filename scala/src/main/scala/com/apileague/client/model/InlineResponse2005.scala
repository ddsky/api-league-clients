package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse2005Memes
import scala.collection.immutable.Seq

/**
 * 
 * @param memes 
 * @param available 
 */
case class InlineResponse2005(memes: Option[Seq[InlineResponse2005Memes]],
                available: Option[Int]
                )

object InlineResponse2005 {
    /**
     * Creates the codec for converting InlineResponse2005 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2005] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2005] = deriveEncoder
}
