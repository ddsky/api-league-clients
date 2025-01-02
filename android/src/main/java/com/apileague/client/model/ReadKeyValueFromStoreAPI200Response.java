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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ReadKeyValueFromStoreAPI200Response {
  
  @SerializedName("value")
  private String value = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getValue() {
    return value;
  }
  public void setValue(String value) {
    this.value = value;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReadKeyValueFromStoreAPI200Response readKeyValueFromStoreAPI200Response = (ReadKeyValueFromStoreAPI200Response) o;
    return (this.value == null ? readKeyValueFromStoreAPI200Response.value == null : this.value.equals(readKeyValueFromStoreAPI200Response.value));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.value == null ? 0: this.value.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReadKeyValueFromStoreAPI200Response {\n");
    
    sb.append("  value: ").append(value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
