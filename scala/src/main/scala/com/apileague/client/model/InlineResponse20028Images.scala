package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20028License

/**
 * 
 * @param width 
 * @param license 
 * @param thumbnail 
 * @param id 
 * @param url 
 * @param height 
 */
case class InlineResponse20028Images(width: Option[Int],
                license: Option[InlineResponse20028License],
                thumbnail: Option[String],
                id: Option[String],
                url: Option[String],
                height: Option[Int]
                )

object InlineResponse20028Images {
    /**
     * Creates the codec for converting InlineResponse20028Images from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20028Images] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20028Images] = deriveEncoder
}
