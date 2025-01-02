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

package com.apileague.client.model;

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RandomMemeAPI200Response {
  
  @SerializedName("description")
  private String description = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("width")
  private Integer width = null;
  @SerializedName("height")
  private Integer height = null;
  @SerializedName("ratio")
  private BigDecimal ratio = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
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
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

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
  public Integer getHeight() {
    return height;
  }
  public void setHeight(Integer height) {
    this.height = height;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getRatio() {
    return ratio;
  }
  public void setRatio(BigDecimal ratio) {
    this.ratio = ratio;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RandomMemeAPI200Response randomMemeAPI200Response = (RandomMemeAPI200Response) o;
    return (this.description == null ? randomMemeAPI200Response.description == null : this.description.equals(randomMemeAPI200Response.description)) &&
        (this.url == null ? randomMemeAPI200Response.url == null : this.url.equals(randomMemeAPI200Response.url)) &&
        (this.type == null ? randomMemeAPI200Response.type == null : this.type.equals(randomMemeAPI200Response.type)) &&
        (this.width == null ? randomMemeAPI200Response.width == null : this.width.equals(randomMemeAPI200Response.width)) &&
        (this.height == null ? randomMemeAPI200Response.height == null : this.height.equals(randomMemeAPI200Response.height)) &&
        (this.ratio == null ? randomMemeAPI200Response.ratio == null : this.ratio.equals(randomMemeAPI200Response.ratio));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.width == null ? 0: this.width.hashCode());
    result = 31 * result + (this.height == null ? 0: this.height.hashCode());
    result = 31 * result + (this.ratio == null ? 0: this.ratio.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RandomMemeAPI200Response {\n");
    
    sb.append("  description: ").append(description).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  width: ").append(width).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("  ratio: ").append(ratio).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
