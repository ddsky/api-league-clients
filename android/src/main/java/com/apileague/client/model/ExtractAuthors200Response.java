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

import com.apileague.client.model.ExtractAuthors200ResponseAuthorsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractAuthors200Response {
  
  @SerializedName("authors")
  private List<ExtractAuthors200ResponseAuthorsInner> authors = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<ExtractAuthors200ResponseAuthorsInner> getAuthors() {
    return authors;
  }
  public void setAuthors(List<ExtractAuthors200ResponseAuthorsInner> authors) {
    this.authors = authors;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractAuthors200Response extractAuthors200Response = (ExtractAuthors200Response) o;
    return (this.authors == null ? extractAuthors200Response.authors == null : this.authors.equals(extractAuthors200Response.authors));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.authors == null ? 0: this.authors.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractAuthors200Response {\n");
    
    sb.append("  authors: ").append(authors).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
