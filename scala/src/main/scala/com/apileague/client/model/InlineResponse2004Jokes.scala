package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param joke 
 */
case class InlineResponse2004Jokes(joke: Option[String]
                )

object InlineResponse2004Jokes {
    /**
     * Creates the codec for converting InlineResponse2004Jokes from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2004Jokes] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2004Jokes] = deriveEncoder
}
