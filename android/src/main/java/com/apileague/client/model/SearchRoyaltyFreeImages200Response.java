/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRoyaltyFreeImages200Response {
  
  @SerializedName("images")
  private List<SearchRoyaltyFreeImages200ResponseImagesInner> images = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRoyaltyFreeImages200ResponseImagesInner> getImages() {
    return images;
  }
  public void setImages(List<SearchRoyaltyFreeImages200ResponseImagesInner> images) {
    this.images = images;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages200Response = (SearchRoyaltyFreeImages200Response) o;
    return (this.images == null ? searchRoyaltyFreeImages200Response.images == null : this.images.equals(searchRoyaltyFreeImages200Response.images));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRoyaltyFreeImages200Response {\n");
    
    sb.append("  images: ").append(images).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
