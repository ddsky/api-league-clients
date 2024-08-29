/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
public class SearchGifs200ResponseImagesInner {
  
  @SerializedName("width")
  private Integer width = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("height")
  private Integer height = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getWidth() {
    return width;
  }
  public void setWidth(Integer width) {
    this.width = width;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getHeight() {
    return height;
  }
  public void setHeight(Integer height) {
    this.height = height;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchGifs200ResponseImagesInner searchGifs200ResponseImagesInner = (SearchGifs200ResponseImagesInner) o;
    return (this.width == null ? searchGifs200ResponseImagesInner.width == null : this.width.equals(searchGifs200ResponseImagesInner.width)) &&
        (this.url == null ? searchGifs200ResponseImagesInner.url == null : this.url.equals(searchGifs200ResponseImagesInner.url)) &&
        (this.height == null ? searchGifs200ResponseImagesInner.height == null : this.height.equals(searchGifs200ResponseImagesInner.height));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.width == null ? 0: this.width.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.height == null ? 0: this.height.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchGifs200ResponseImagesInner {\n");
    
    sb.append("  width: ").append(width).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
