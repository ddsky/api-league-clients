package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse2007Images
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 */
case class InlineResponse2007(images: Option[Seq[InlineResponse2007Images]]
                )

object InlineResponse2007 {
    /**
     * Creates the codec for converting InlineResponse2007 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2007] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2007] = deriveEncoder
}
