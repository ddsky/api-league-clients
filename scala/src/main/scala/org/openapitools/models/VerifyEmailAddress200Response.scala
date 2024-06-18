package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import apileague._

/**
 * 
 * @param email 
 * @param domain 
 * @param firstUnderscorename 
 * @param middleUnderscorename 
 * @param lastUnderscorename 
 * @param fullUnderscorename 
 * @param username 
 * @param image 
 * @param result 
 * @param disposable 
 * @param acceptUnderscoreall 
 * @param freeUnderscoreprovider 
 */
case class VerifyEmailAddress200Response(email: Option[String],
                domain: Option[String],
                firstUnderscorename: Option[String],
                middleUnderscorename: Option[String],
                lastUnderscorename: Option[String],
                fullUnderscorename: Option[String],
                username: Option[String],
                image: Option[String],
                result: Option[String],
                disposable: Option[Boolean],
                acceptUnderscoreall: Option[Boolean],
                freeUnderscoreprovider: Option[Boolean]
                )

object VerifyEmailAddress200Response {
    /**
     * Creates the codec for converting VerifyEmailAddress200Response from and to JSON.
     */
    implicit val decoder: Decoder[VerifyEmailAddress200Response] = deriveDecoder
    implicit val encoder: ObjectEncoder[VerifyEmailAddress200Response] = deriveEncoder
}
