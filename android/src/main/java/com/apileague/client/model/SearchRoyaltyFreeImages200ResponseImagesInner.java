/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInnerLicense;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRoyaltyFreeImages200ResponseImagesInner {
  
  @SerializedName("width")
  private Integer width = null;
  @SerializedName("license")
  private SearchRoyaltyFreeImages200ResponseImagesInnerLicense license = null;
  @SerializedName("thumbnail")
  private String thumbnail = null;
  @SerializedName("id")
  private String id = null;
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
  public SearchRoyaltyFreeImages200ResponseImagesInnerLicense getLicense() {
    return license;
  }
  public void setLicense(SearchRoyaltyFreeImages200ResponseImagesInnerLicense license) {
    this.license = license;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getThumbnail() {
    return thumbnail;
  }
  public void setThumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
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
    SearchRoyaltyFreeImages200ResponseImagesInner searchRoyaltyFreeImages200ResponseImagesInner = (SearchRoyaltyFreeImages200ResponseImagesInner) o;
    return (this.width == null ? searchRoyaltyFreeImages200ResponseImagesInner.width == null : this.width.equals(searchRoyaltyFreeImages200ResponseImagesInner.width)) &&
        (this.license == null ? searchRoyaltyFreeImages200ResponseImagesInner.license == null : this.license.equals(searchRoyaltyFreeImages200ResponseImagesInner.license)) &&
        (this.thumbnail == null ? searchRoyaltyFreeImages200ResponseImagesInner.thumbnail == null : this.thumbnail.equals(searchRoyaltyFreeImages200ResponseImagesInner.thumbnail)) &&
        (this.id == null ? searchRoyaltyFreeImages200ResponseImagesInner.id == null : this.id.equals(searchRoyaltyFreeImages200ResponseImagesInner.id)) &&
        (this.url == null ? searchRoyaltyFreeImages200ResponseImagesInner.url == null : this.url.equals(searchRoyaltyFreeImages200ResponseImagesInner.url)) &&
        (this.height == null ? searchRoyaltyFreeImages200ResponseImagesInner.height == null : this.height.equals(searchRoyaltyFreeImages200ResponseImagesInner.height));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.width == null ? 0: this.width.hashCode());
    result = 31 * result + (this.license == null ? 0: this.license.hashCode());
    result = 31 * result + (this.thumbnail == null ? 0: this.thumbnail.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this.height == null ? 0: this.height.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRoyaltyFreeImages200ResponseImagesInner {\n");
    
    sb.append("  width: ").append(width).append("\n");
    sb.append("  license: ").append(license).append("\n");
    sb.append("  thumbnail: ").append(thumbnail).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
