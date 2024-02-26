package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param title 
 * @param mainUnderscoretext 
 * @param mainUnderscorehtml 
 * @param images 
 */
case class InlineResponse20012(title: Option[String],
                mainUnderscoretext: Option[String],
                mainUnderscorehtml: Option[String],
                images: Option[Seq[String]]
                )

object InlineResponse20012 {
    /**
     * Creates the codec for converting InlineResponse20012 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20012] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20012] = deriveEncoder
}
