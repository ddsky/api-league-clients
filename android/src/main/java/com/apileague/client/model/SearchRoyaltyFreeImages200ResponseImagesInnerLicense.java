/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
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
public class SearchRoyaltyFreeImages200ResponseImagesInnerLicense {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("link")
  private String link = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLink() {
    return link;
  }
  public void setLink(String link) {
    this.link = link;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRoyaltyFreeImages200ResponseImagesInnerLicense searchRoyaltyFreeImages200ResponseImagesInnerLicense = (SearchRoyaltyFreeImages200ResponseImagesInnerLicense) o;
    return (this.name == null ? searchRoyaltyFreeImages200ResponseImagesInnerLicense.name == null : this.name.equals(searchRoyaltyFreeImages200ResponseImagesInnerLicense.name)) &&
        (this.link == null ? searchRoyaltyFreeImages200ResponseImagesInnerLicense.link == null : this.link.equals(searchRoyaltyFreeImages200ResponseImagesInnerLicense.link));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.link == null ? 0: this.link.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRoyaltyFreeImages200ResponseImagesInnerLicense {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
