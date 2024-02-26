package com.apileague.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import com.apileague.client.model.BigDecimal

/**
 * 
 * @param title 
 * @param text 
 * @param url 
 * @param image 
 * @param publishUnderscoredate 
 * @param author 
 * @param language 
 * @param sourceUnderscorecountry 
 * @param sentiment 
 */
case class InlineResponse2003(title: Option[String],
                text: Option[String],
                url: Option[String],
                image: Option[String],
                publishUnderscoredate: Option[String],
                author: Option[String],
                language: Option[String],
                sourceUnderscorecountry: Option[String],
                sentiment: Option[BigDecimal]
                )

object InlineResponse2003 {
    /**
     * Creates the codec for converting InlineResponse2003 from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse2003] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse2003] = deriveEncoder
}
