/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client;

public class ApiException extends Exception {
  int code = 0;
  String message = null;

  public ApiException() {}

  public ApiException(int code, String message) {
    this.code = code;
    this.message = message;
  }

  /**
   * Get the HTTP status code.
   *
   * @return HTTP status code
   */
  public int getCode() {
    return code;
  }

  /**
   * Set the HTTP status code.
   *
   * @param code HTTP status code.
   */
  public void setCode(int code) {
    this.code = code;
  }

  /**
   * Get the error message.
   *
   * @return Error message.
   */
  public String getMessage() {
    return message;
  }

  /**
   * Set the error messages.
   *
   * @param message Error message.
   */
  public void setMessage(String message) {
    this.message = message;
  }

  @Override
  public String toString() {
    return "ApiException{" +
           "code=" + code +
           ", message=" + message +
           '}';
  }
}
