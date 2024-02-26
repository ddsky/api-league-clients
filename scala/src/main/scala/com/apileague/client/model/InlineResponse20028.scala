package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20028Images
import scala.collection.immutable.Seq

/**
 * 
 * @param images 
 */
case class InlineResponse20028(images: Option[Seq[InlineResponse20028Images]]
                )

object InlineResponse20028 {
    /**
     * Creates the codec for converting InlineResponse20028 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028] = deriveEncoder
}
