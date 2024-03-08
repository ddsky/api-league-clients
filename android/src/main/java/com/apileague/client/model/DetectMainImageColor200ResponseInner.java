/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
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
public class DetectMainImageColor200ResponseInner {
  
  @SerializedName("specific_color")
  private String specificColor = null;
  @SerializedName("main_color")
  private String mainColor = null;
  @SerializedName("hex_code")
  private String hexCode = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSpecificColor() {
    return specificColor;
  }
  public void setSpecificColor(String specificColor) {
    this.specificColor = specificColor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMainColor() {
    return mainColor;
  }
  public void setMainColor(String mainColor) {
    this.mainColor = mainColor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getHexCode() {
    return hexCode;
  }
  public void setHexCode(String hexCode) {
    this.hexCode = hexCode;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DetectMainImageColor200ResponseInner detectMainImageColor200ResponseInner = (DetectMainImageColor200ResponseInner) o;
    return (this.specificColor == null ? detectMainImageColor200ResponseInner.specificColor == null : this.specificColor.equals(detectMainImageColor200ResponseInner.specificColor)) &&
        (this.mainColor == null ? detectMainImageColor200ResponseInner.mainColor == null : this.mainColor.equals(detectMainImageColor200ResponseInner.mainColor)) &&
        (this.hexCode == null ? detectMainImageColor200ResponseInner.hexCode == null : this.hexCode.equals(detectMainImageColor200ResponseInner.hexCode));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.specificColor == null ? 0: this.specificColor.hashCode());
    result = 31 * result + (this.mainColor == null ? 0: this.mainColor.hashCode());
    result = 31 * result + (this.hexCode == null ? 0: this.hexCode.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DetectMainImageColor200ResponseInner {\n");
    
    sb.append("  specificColor: ").append(specificColor).append("\n");
    sb.append("  mainColor: ").append(mainColor).append("\n");
    sb.append("  hexCode: ").append(hexCode).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
