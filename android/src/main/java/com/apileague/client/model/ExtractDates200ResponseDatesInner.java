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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractDates200ResponseDatesInner {
  
  @SerializedName("start_position")
  private Integer startPosition = null;
  @SerializedName("date")
  private String date = null;
  @SerializedName("normalized_date")
  private BigDecimal normalizedDate = null;
  @SerializedName("tag")
  private String tag = null;
  @SerializedName("end_position")
  private Integer endPosition = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getStartPosition() {
    return startPosition;
  }
  public void setStartPosition(Integer startPosition) {
    this.startPosition = startPosition;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDate() {
    return date;
  }
  public void setDate(String date) {
    this.date = date;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getNormalizedDate() {
    return normalizedDate;
  }
  public void setNormalizedDate(BigDecimal normalizedDate) {
    this.normalizedDate = normalizedDate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTag() {
    return tag;
  }
  public void setTag(String tag) {
    this.tag = tag;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getEndPosition() {
    return endPosition;
  }
  public void setEndPosition(Integer endPosition) {
    this.endPosition = endPosition;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractDates200ResponseDatesInner extractDates200ResponseDatesInner = (ExtractDates200ResponseDatesInner) o;
    return (this.startPosition == null ? extractDates200ResponseDatesInner.startPosition == null : this.startPosition.equals(extractDates200ResponseDatesInner.startPosition)) &&
        (this.date == null ? extractDates200ResponseDatesInner.date == null : this.date.equals(extractDates200ResponseDatesInner.date)) &&
        (this.normalizedDate == null ? extractDates200ResponseDatesInner.normalizedDate == null : this.normalizedDate.equals(extractDates200ResponseDatesInner.normalizedDate)) &&
        (this.tag == null ? extractDates200ResponseDatesInner.tag == null : this.tag.equals(extractDates200ResponseDatesInner.tag)) &&
        (this.endPosition == null ? extractDates200ResponseDatesInner.endPosition == null : this.endPosition.equals(extractDates200ResponseDatesInner.endPosition));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.startPosition == null ? 0: this.startPosition.hashCode());
    result = 31 * result + (this.date == null ? 0: this.date.hashCode());
    result = 31 * result + (this.normalizedDate == null ? 0: this.normalizedDate.hashCode());
    result = 31 * result + (this.tag == null ? 0: this.tag.hashCode());
    result = 31 * result + (this.endPosition == null ? 0: this.endPosition.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractDates200ResponseDatesInner {\n");
    
    sb.append("  startPosition: ").append(startPosition).append("\n");
    sb.append("  date: ").append(date).append("\n");
    sb.append("  normalizedDate: ").append(normalizedDate).append("\n");
    sb.append("  tag: ").append(tag).append("\n");
    sb.append("  endPosition: ").append(endPosition).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
