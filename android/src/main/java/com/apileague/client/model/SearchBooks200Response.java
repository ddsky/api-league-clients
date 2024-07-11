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
public class SearchBooks200Response {
  
  @SerializedName("available")
  private Integer available = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("books")
  private List<List<SearchBooks200ResponseBooksInnerInner>> books = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAvailable() {
    return available;
  }
  public void setAvailable(Integer available) {
    this.available = available;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getOffset() {
    return offset;
  }
  public void setOffset(Integer offset) {
    this.offset = offset;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<List<SearchBooks200ResponseBooksInnerInner>> getBooks() {
    return books;
  }
  public void setBooks(List<List<SearchBooks200ResponseBooksInnerInner>> books) {
    this.books = books;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchBooks200Response searchBooks200Response = (SearchBooks200Response) o;
    return (this.available == null ? searchBooks200Response.available == null : this.available.equals(searchBooks200Response.available)) &&
        (this.number == null ? searchBooks200Response.number == null : this.number.equals(searchBooks200Response.number)) &&
        (this.offset == null ? searchBooks200Response.offset == null : this.offset.equals(searchBooks200Response.offset)) &&
        (this.books == null ? searchBooks200Response.books == null : this.books.equals(searchBooks200Response.books));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.available == null ? 0: this.available.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.books == null ? 0: this.books.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchBooks200Response {\n");
    
    sb.append("  available: ").append(available).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  books: ").append(books).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
