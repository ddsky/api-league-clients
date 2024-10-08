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

import com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRestaurants200Response {
  
  @SerializedName("restaurants")
  private List<SearchRestaurants200ResponseRestaurantsInner> restaurants = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchRestaurants200ResponseRestaurantsInner> getRestaurants() {
    return restaurants;
  }
  public void setRestaurants(List<SearchRestaurants200ResponseRestaurantsInner> restaurants) {
    this.restaurants = restaurants;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200Response searchRestaurants200Response = (SearchRestaurants200Response) o;
    return (this.restaurants == null ? searchRestaurants200Response.restaurants == null : this.restaurants.equals(searchRestaurants200Response.restaurants));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.restaurants == null ? 0: this.restaurants.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurants200Response {\n");
    
    sb.append("  restaurants: ").append(restaurants).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
