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

import com.apileague.client.model.SearchBooksAPI200ResponseBooksInnerInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class FindSimilarBooksAPI200Response {
  
  @SerializedName("similar_books")
  private List<SearchBooksAPI200ResponseBooksInnerInner> similarBooks = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchBooksAPI200ResponseBooksInnerInner> getSimilarBooks() {
    return similarBooks;
  }
  public void setSimilarBooks(List<SearchBooksAPI200ResponseBooksInnerInner> similarBooks) {
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
    FindSimilarBooksAPI200Response findSimilarBooksAPI200Response = (FindSimilarBooksAPI200Response) o;
    return (this.similarBooks == null ? findSimilarBooksAPI200Response.similarBooks == null : this.similarBooks.equals(findSimilarBooksAPI200Response.similarBooks));
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
    sb.append("class FindSimilarBooksAPI200Response {\n");
    
    sb.append("  similarBooks: ").append(similarBooks).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}