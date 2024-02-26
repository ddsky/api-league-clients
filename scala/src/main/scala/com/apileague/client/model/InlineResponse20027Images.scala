package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.InlineResponse20027License

/**
 * 
 * @param width 
 * @param license 
 * @param thumbnail 
 * @param id 
 * @param url 
 * @param height 
 */
case class InlineResponse20027Images(width: Option[Int],
                license: Option[InlineResponse20027License],
                thumbnail: Option[String],
                id: Option[String],
                url: Option[String],
                height: Option[Int]
                )

object InlineResponse20027Images {
    /**
     * Creates the codec for converting InlineResponse20027Images from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20027Images] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20027Images] = deriveEncoder
}
