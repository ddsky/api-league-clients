/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchBooks200ResponseBooksInnerInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class FindSimilarBooks200Response {
  
  @SerializedName("similar_books")
  private List<SearchBooks200ResponseBooksInnerInner> similarBooks = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchBooks200ResponseBooksInnerInner> getSimilarBooks() {
    return similarBooks;
  }
  public void setSimilarBooks(List<SearchBooks200ResponseBooksInnerInner> similarBooks) {
    this.similarBooks = similarBooks;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FindSimilarBooks200Response findSimilarBooks200Response = (FindSimilarBooks200Response) o;
    return (this.similarBooks == null ? findSimilarBooks200Response.similarBooks == null : this.similarBooks.equals(findSimilarBooks200Response.similarBooks));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.similarBooks == null ? 0: this.similarBooks.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FindSimilarBooks200Response {\n");
    
    sb.append("  similarBooks: ").append(similarBooks).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
