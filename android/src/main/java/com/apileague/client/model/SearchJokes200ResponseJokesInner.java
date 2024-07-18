/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
public class SearchJokes200ResponseJokesInner {
  
  @SerializedName("joke")
  private String joke = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getJoke() {
    return joke;
  }
  public void setJoke(String joke) {
    this.joke = joke;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchJokes200ResponseJokesInner searchJokes200ResponseJokesInner = (SearchJokes200ResponseJokesInner) o;
    return (this.joke == null ? searchJokes200ResponseJokesInner.joke == null : this.joke.equals(searchJokes200ResponseJokesInner.joke));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.joke == null ? 0: this.joke.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchJokes200ResponseJokesInner {\n");
    
    sb.append("  joke: ").append(joke).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
