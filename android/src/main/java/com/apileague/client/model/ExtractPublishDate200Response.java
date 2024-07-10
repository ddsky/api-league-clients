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
public class ExtractPublishDate200Response {
  
  @SerializedName("publish_date")
  private String publishDate = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getPublishDate() {
    return publishDate;
  }
  public void setPublishDate(String publishDate) {
    this.publishDate = publishDate;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractPublishDate200Response extractPublishDate200Response = (ExtractPublishDate200Response) o;
    return (this.publishDate == null ? extractPublishDate200Response.publishDate == null : this.publishDate.equals(extractPublishDate200Response.publishDate));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.publishDate == null ? 0: this.publishDate.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractPublishDate200Response {\n");
    
    sb.append("  publishDate: ").append(publishDate).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
