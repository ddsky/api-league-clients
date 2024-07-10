/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class TagPartOfSpeech200Response {
  
  @SerializedName("tagged_text")
  private String taggedText = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTaggedText() {
    return taggedText;
  }
  public void setTaggedText(String taggedText) {
    this.taggedText = taggedText;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TagPartOfSpeech200Response tagPartOfSpeech200Response = (TagPartOfSpeech200Response) o;
    return (this.taggedText == null ? tagPartOfSpeech200Response.taggedText == null : this.taggedText.equals(tagPartOfSpeech200Response.taggedText));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.taggedText == null ? 0: this.taggedText.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TagPartOfSpeech200Response {\n");
    
    sb.append("  taggedText: ").append(taggedText).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
