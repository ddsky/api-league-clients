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

import com.apileague.client.model.SearchRoyaltyFreeImagesAPI200ResponseImagesInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRoyaltyFreeImagesAPI200Response {
  
  @SerializedName("images")
  private List<SearchRoyaltyFreeImagesAPI200ResponseImagesInner> images = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRoyaltyFreeImagesAPI200ResponseImagesInner> getImages() {
    return images;
  }
  public void setImages(List<SearchRoyaltyFreeImagesAPI200ResponseImagesInner> images) {
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
    SearchRoyaltyFreeImagesAPI200Response searchRoyaltyFreeImagesAPI200Response = (SearchRoyaltyFreeImagesAPI200Response) o;
    return (this.images == null ? searchRoyaltyFreeImagesAPI200Response.images == null : this.images.equals(searchRoyaltyFreeImagesAPI200Response.images));
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
    sb.append("class SearchRoyaltyFreeImagesAPI200Response {\n");
    
    sb.append("  images: ").append(images).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
