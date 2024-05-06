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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractAuthors200ResponseAuthorsInner {
  
  @SerializedName("link")
  private String link = null;
  @SerializedName("name")
  private String name = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLink() {
    return link;
  }
  public void setLink(String link) {
    this.link = link;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractAuthors200ResponseAuthorsInner extractAuthors200ResponseAuthorsInner = (ExtractAuthors200ResponseAuthorsInner) o;
    return (this.link == null ? extractAuthors200ResponseAuthorsInner.link == null : this.link.equals(extractAuthors200ResponseAuthorsInner.link)) &&
        (this.name == null ? extractAuthors200ResponseAuthorsInner.name == null : this.name.equals(extractAuthors200ResponseAuthorsInner.name));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.link == null ? 0: this.link.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractAuthors200ResponseAuthorsInner {\n");
    
    sb.append("  link: ").append(link).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
