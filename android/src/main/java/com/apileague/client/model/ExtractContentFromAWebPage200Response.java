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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractContentFromAWebPage200Response {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("main_text")
  private String mainText = null;
  @SerializedName("main_html")
  private String mainHtml = null;
  @SerializedName("images")
  private List<String> images = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMainText() {
    return mainText;
  }
  public void setMainText(String mainText) {
    this.mainText = mainText;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMainHtml() {
    return mainHtml;
  }
  public void setMainHtml(String mainHtml) {
    this.mainHtml = mainHtml;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getImages() {
    return images;
  }
  public void setImages(List<String> images) {
    this.images = images;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractContentFromAWebPage200Response extractContentFromAWebPage200Response = (ExtractContentFromAWebPage200Response) o;
    return (this.title == null ? extractContentFromAWebPage200Response.title == null : this.title.equals(extractContentFromAWebPage200Response.title)) &&
        (this.mainText == null ? extractContentFromAWebPage200Response.mainText == null : this.mainText.equals(extractContentFromAWebPage200Response.mainText)) &&
        (this.mainHtml == null ? extractContentFromAWebPage200Response.mainHtml == null : this.mainHtml.equals(extractContentFromAWebPage200Response.mainHtml)) &&
        (this.images == null ? extractContentFromAWebPage200Response.images == null : this.images.equals(extractContentFromAWebPage200Response.images));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.mainText == null ? 0: this.mainText.hashCode());
    result = 31 * result + (this.mainHtml == null ? 0: this.mainHtml.hashCode());
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractContentFromAWebPage200Response {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  mainText: ").append(mainText).append("\n");
    sb.append("  mainHtml: ").append(mainHtml).append("\n");
    sb.append("  images: ").append(images).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
