package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import scala.collection.immutable.Seq

/**
 * 
 * @param title 
 * @param mainUnderscoretext 
 * @param mainUnderscorehtml 
 * @param images 
 */
case class ExtractContentFromAWebPage200Response(title: Option[String],
                mainUnderscoretext: Option[String],
                mainUnderscorehtml: Option[String],
                images: Option[Seq[String]]
                )

object ExtractContentFromAWebPage200Response {
    /**
     * Creates the codec for converting ExtractContentFromAWebPage200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractContentFromAWebPage200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractContentFromAWebPage200Response] = deriveEncoder
}
