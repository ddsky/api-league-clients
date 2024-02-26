package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse2004Jokes
import scala.collection.immutable.Seq

/**
 * 
 * @param jokes 
 * @param available 
 */
case class InlineResponse2004(jokes: Option[Seq[InlineResponse2004Jokes]],
                available: Option[Int]
                )

object InlineResponse2004 {
    /**
     * Creates the codec for converting InlineResponse2004 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2004] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2004] = deriveEncoder
}
