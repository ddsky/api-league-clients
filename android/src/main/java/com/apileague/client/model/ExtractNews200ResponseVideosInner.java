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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ExtractNews200ResponseVideosInner {
  
  @SerializedName("summary")
  private String summary = null;
  @SerializedName("duration")
  private Integer duration = null;
  @SerializedName("thumbnail")
  private String thumbnail = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("url")
  private String url = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSummary() {
    return summary;
  }
  public void setSummary(String summary) {
    this.summary = summary;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getDuration() {
    return duration;
  }
  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getThumbnail() {
    return thumbnail;
  }
  public void setThumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
  }

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
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractNews200ResponseVideosInner extractNews200ResponseVideosInner = (ExtractNews200ResponseVideosInner) o;
    return (this.summary == null ? extractNews200ResponseVideosInner.summary == null : this.summary.equals(extractNews200ResponseVideosInner.summary)) &&
        (this.duration == null ? extractNews200ResponseVideosInner.duration == null : this.duration.equals(extractNews200ResponseVideosInner.duration)) &&
        (this.thumbnail == null ? extractNews200ResponseVideosInner.thumbnail == null : this.thumbnail.equals(extractNews200ResponseVideosInner.thumbnail)) &&
        (this.title == null ? extractNews200ResponseVideosInner.title == null : this.title.equals(extractNews200ResponseVideosInner.title)) &&
        (this.url == null ? extractNews200ResponseVideosInner.url == null : this.url.equals(extractNews200ResponseVideosInner.url));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.summary == null ? 0: this.summary.hashCode());
    result = 31 * result + (this.duration == null ? 0: this.duration.hashCode());
    result = 31 * result + (this.thumbnail == null ? 0: this.thumbnail.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractNews200ResponseVideosInner {\n");
    
    sb.append("  summary: ").append(summary).append("\n");
    sb.append("  duration: ").append(duration).append("\n");
    sb.append("  thumbnail: ").append(thumbnail).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
