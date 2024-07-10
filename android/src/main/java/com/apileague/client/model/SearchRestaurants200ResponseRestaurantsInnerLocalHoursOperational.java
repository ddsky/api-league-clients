/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
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
public class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
  
  @SerializedName("sunday")
  private String sunday = null;
  @SerializedName("saturday")
  private String saturday = null;
  @SerializedName("tuesday")
  private String tuesday = null;
  @SerializedName("thursday")
  private String thursday = null;
  @SerializedName("friday")
  private String friday = null;
  @SerializedName("wednesday")
  private String wednesday = null;
  @SerializedName("monday")
  private String monday = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSunday() {
    return sunday;
  }
  public void setSunday(String sunday) {
    this.sunday = sunday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSaturday() {
    return saturday;
  }
  public void setSaturday(String saturday) {
    this.saturday = saturday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTuesday() {
    return tuesday;
  }
  public void setTuesday(String tuesday) {
    this.tuesday = tuesday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getThursday() {
    return thursday;
  }
  public void setThursday(String thursday) {
    this.thursday = thursday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFriday() {
    return friday;
  }
  public void setFriday(String friday) {
    this.friday = friday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getWednesday() {
    return wednesday;
  }
  public void setWednesday(String wednesday) {
    this.wednesday = wednesday;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMonday() {
    return monday;
  }
  public void setMonday(String monday) {
    this.monday = monday;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational = (SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) o;
    return (this.sunday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.sunday == null : this.sunday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.sunday)) &&
        (this.saturday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.saturday == null : this.saturday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.saturday)) &&
        (this.tuesday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.tuesday == null : this.tuesday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.tuesday)) &&
        (this.thursday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.thursday == null : this.thursday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.thursday)) &&
        (this.friday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.friday == null : this.friday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.friday)) &&
        (this.wednesday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.wednesday == null : this.wednesday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.wednesday)) &&
        (this.monday == null ? searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.monday == null : this.monday.equals(searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.monday));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.sunday == null ? 0: this.sunday.hashCode());
    result = 31 * result + (this.saturday == null ? 0: this.saturday.hashCode());
    result = 31 * result + (this.tuesday == null ? 0: this.tuesday.hashCode());
    result = 31 * result + (this.thursday == null ? 0: this.thursday.hashCode());
    result = 31 * result + (this.friday == null ? 0: this.friday.hashCode());
    result = 31 * result + (this.wednesday == null ? 0: this.wednesday.hashCode());
    result = 31 * result + (this.monday == null ? 0: this.monday.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {\n");
    
    sb.append("  sunday: ").append(sunday).append("\n");
    sb.append("  saturday: ").append(saturday).append("\n");
    sb.append("  tuesday: ").append(tuesday).append("\n");
    sb.append("  thursday: ").append(thursday).append("\n");
    sb.append("  friday: ").append(friday).append("\n");
    sb.append("  wednesday: ").append(wednesday).append("\n");
    sb.append("  monday: ").append(monday).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
