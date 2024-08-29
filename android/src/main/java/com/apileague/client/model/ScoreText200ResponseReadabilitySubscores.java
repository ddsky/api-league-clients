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

import java.math.BigDecimal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ScoreText200ResponseReadabilitySubscores {
  
  @SerializedName("reading_time_seconds")
  private Integer readingTimeSeconds = null;
  @SerializedName("forcast")
  private BigDecimal forcast = null;
  @SerializedName("flesch")
  private BigDecimal flesch = null;
  @SerializedName("smog")
  private BigDecimal smog = null;
  @SerializedName("ari")
  private BigDecimal ari = null;
  @SerializedName("lix")
  private BigDecimal lix = null;
  @SerializedName("coleman_liau")
  private BigDecimal colemanLiau = null;
  @SerializedName("kincaid")
  private BigDecimal kincaid = null;
  @SerializedName("fog")
  private BigDecimal fog = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getReadingTimeSeconds() {
    return readingTimeSeconds;
  }
  public void setReadingTimeSeconds(Integer readingTimeSeconds) {
    this.readingTimeSeconds = readingTimeSeconds;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getForcast() {
    return forcast;
  }
  public void setForcast(BigDecimal forcast) {
    this.forcast = forcast;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getFlesch() {
    return flesch;
  }
  public void setFlesch(BigDecimal flesch) {
    this.flesch = flesch;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getSmog() {
    return smog;
  }
  public void setSmog(BigDecimal smog) {
    this.smog = smog;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getAri() {
    return ari;
  }
  public void setAri(BigDecimal ari) {
    this.ari = ari;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getLix() {
    return lix;
  }
  public void setLix(BigDecimal lix) {
    this.lix = lix;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getColemanLiau() {
    return colemanLiau;
  }
  public void setColemanLiau(BigDecimal colemanLiau) {
    this.colemanLiau = colemanLiau;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getKincaid() {
    return kincaid;
  }
  public void setKincaid(BigDecimal kincaid) {
    this.kincaid = kincaid;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getFog() {
    return fog;
  }
  public void setFog(BigDecimal fog) {
    this.fog = fog;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseReadabilitySubscores scoreText200ResponseReadabilitySubscores = (ScoreText200ResponseReadabilitySubscores) o;
    return (this.readingTimeSeconds == null ? scoreText200ResponseReadabilitySubscores.readingTimeSeconds == null : this.readingTimeSeconds.equals(scoreText200ResponseReadabilitySubscores.readingTimeSeconds)) &&
        (this.forcast == null ? scoreText200ResponseReadabilitySubscores.forcast == null : this.forcast.equals(scoreText200ResponseReadabilitySubscores.forcast)) &&
        (this.flesch == null ? scoreText200ResponseReadabilitySubscores.flesch == null : this.flesch.equals(scoreText200ResponseReadabilitySubscores.flesch)) &&
        (this.smog == null ? scoreText200ResponseReadabilitySubscores.smog == null : this.smog.equals(scoreText200ResponseReadabilitySubscores.smog)) &&
        (this.ari == null ? scoreText200ResponseReadabilitySubscores.ari == null : this.ari.equals(scoreText200ResponseReadabilitySubscores.ari)) &&
        (this.lix == null ? scoreText200ResponseReadabilitySubscores.lix == null : this.lix.equals(scoreText200ResponseReadabilitySubscores.lix)) &&
        (this.colemanLiau == null ? scoreText200ResponseReadabilitySubscores.colemanLiau == null : this.colemanLiau.equals(scoreText200ResponseReadabilitySubscores.colemanLiau)) &&
        (this.kincaid == null ? scoreText200ResponseReadabilitySubscores.kincaid == null : this.kincaid.equals(scoreText200ResponseReadabilitySubscores.kincaid)) &&
        (this.fog == null ? scoreText200ResponseReadabilitySubscores.fog == null : this.fog.equals(scoreText200ResponseReadabilitySubscores.fog));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.readingTimeSeconds == null ? 0: this.readingTimeSeconds.hashCode());
    result = 31 * result + (this.forcast == null ? 0: this.forcast.hashCode());
    result = 31 * result + (this.flesch == null ? 0: this.flesch.hashCode());
    result = 31 * result + (this.smog == null ? 0: this.smog.hashCode());
    result = 31 * result + (this.ari == null ? 0: this.ari.hashCode());
    result = 31 * result + (this.lix == null ? 0: this.lix.hashCode());
    result = 31 * result + (this.colemanLiau == null ? 0: this.colemanLiau.hashCode());
    result = 31 * result + (this.kincaid == null ? 0: this.kincaid.hashCode());
    result = 31 * result + (this.fog == null ? 0: this.fog.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseReadabilitySubscores {\n");
    
    sb.append("  readingTimeSeconds: ").append(readingTimeSeconds).append("\n");
    sb.append("  forcast: ").append(forcast).append("\n");
    sb.append("  flesch: ").append(flesch).append("\n");
    sb.append("  smog: ").append(smog).append("\n");
    sb.append("  ari: ").append(ari).append("\n");
    sb.append("  lix: ").append(lix).append("\n");
    sb.append("  colemanLiau: ").append(colemanLiau).append("\n");
    sb.append("  kincaid: ").append(kincaid).append("\n");
    sb.append("  fog: ").append(fog).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
