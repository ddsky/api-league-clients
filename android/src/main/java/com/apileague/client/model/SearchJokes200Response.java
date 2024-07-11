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

import com.apileague.client.model.SearchJokes200ResponseJokesInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchJokes200Response {
  
  @SerializedName("jokes")
  private List<SearchJokes200ResponseJokesInner> jokes = null;
  @SerializedName("available")
  private Integer available = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchJokes200ResponseJokesInner> getJokes() {
    return jokes;
  }
  public void setJokes(List<SearchJokes200ResponseJokesInner> jokes) {
    this.jokes = jokes;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAvailable() {
    return available;
  }
  public void setAvailable(Integer available) {
    this.available = available;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchJokes200Response searchJokes200Response = (SearchJokes200Response) o;
    return (this.jokes == null ? searchJokes200Response.jokes == null : this.jokes.equals(searchJokes200Response.jokes)) &&
        (this.available == null ? searchJokes200Response.available == null : this.available.equals(searchJokes200Response.available));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.jokes == null ? 0: this.jokes.hashCode());
    result = 31 * result + (this.available == null ? 0: this.available.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchJokes200Response {\n");
    
    sb.append("  jokes: ").append(jokes).append("\n");
    sb.append("  available: ").append(available).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
