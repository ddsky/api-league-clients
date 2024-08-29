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
public class SearchIcons200Response {
  
  @SerializedName("icons")
  private List<SearchRoyaltyFreeImages200ResponseImagesInner> icons = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRoyaltyFreeImages200ResponseImagesInner> getIcons() {
    return icons;
  }
  public void setIcons(List<SearchRoyaltyFreeImages200ResponseImagesInner> icons) {
    this.icons = icons;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchIcons200Response searchIcons200Response = (SearchIcons200Response) o;
    return (this.icons == null ? searchIcons200Response.icons == null : this.icons.equals(searchIcons200Response.icons));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.icons == null ? 0: this.icons.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchIcons200Response {\n");
    
    sb.append("  icons: ").append(icons).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
