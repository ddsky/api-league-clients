/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.ExtractEntities200ResponseEntitiesInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractEntities200Response {
  
  @SerializedName("entities")
  private List<ExtractEntities200ResponseEntitiesInner> entities = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<ExtractEntities200ResponseEntitiesInner> getEntities() {
    return entities;
  }
  public void setEntities(List<ExtractEntities200ResponseEntitiesInner> entities) {
    this.entities = entities;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractEntities200Response extractEntities200Response = (ExtractEntities200Response) o;
    return (this.entities == null ? extractEntities200Response.entities == null : this.entities.equals(extractEntities200Response.entities));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.entities == null ? 0: this.entities.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractEntities200Response {\n");
    
    sb.append("  entities: ").append(entities).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
