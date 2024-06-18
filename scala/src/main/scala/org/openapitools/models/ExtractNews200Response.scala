package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._
import org.openapitools.models.ExtractNews200ResponseImagesInner
import org.openapitools.models.ExtractNews200ResponseVideosInner
import scala.collection.immutable.Seq

/**
 * 
 * @param title 
 * @param text 
 * @param url 
 * @param images 
 * @param videos 
 * @param publishUnderscoredate 
 * @param authors 
 * @param language 
 */
case class ExtractNews200Response(title: Option[String],
                text: Option[String],
                url: Option[String],
                images: Option[Seq[ExtractNews200ResponseImagesInner]],
                videos: Option[Seq[ExtractNews200ResponseVideosInner]],
                publishUnderscoredate: Option[String],
                authors: Option[Seq[String]],
                language: Option[String]
                )

object ExtractNews200Response {
    /**
     * Creates the codec for converting ExtractNews200Response from and to JSON.
     */
    implicit val decoder: Decoder[ExtractNews200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtractNews200Response] = deriveEncoder
}
