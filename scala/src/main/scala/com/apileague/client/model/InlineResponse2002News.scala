package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal
import scala.collection.immutable.Seq

/**
 * 
 * @param summary 
 * @param image 
 * @param sentiment 
 * @param sourceUnderscorecountry 
 * @param language 
 * @param id 
 * @param text 
 * @param title 
 * @param publishUnderscoredate 
 * @param url 
 * @param authors 
 */
case class InlineResponse2002News(summary: Option[String],
                image: Option[String],
                sentiment: Option[BigDecimal],
                sourceUnderscorecountry: Option[String],
                language: Option[String],
                id: Option[Int],
                text: Option[String],
                title: Option[String],
                publishUnderscoredate: Option[String],
                url: Option[String],
                authors: Option[Seq[String]]
                )

object InlineResponse2002News {
    /**
     * Creates the codec for converting InlineResponse2002News from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2002News] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2002News] = deriveEncoder
}
