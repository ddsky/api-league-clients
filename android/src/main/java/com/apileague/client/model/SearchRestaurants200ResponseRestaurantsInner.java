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

import com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerAddress;
import com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRestaurants200ResponseRestaurantsInner {
  
  @SerializedName("offers_third_party_delivery")
  private Boolean offersThirdPartyDelivery = null;
  @SerializedName("address")
  private SearchRestaurants200ResponseRestaurantsInnerAddress address = null;
  @SerializedName("supports_upc_codes")
  private Boolean supportsUpcCodes = null;
  @SerializedName("is_open")
  private Boolean isOpen = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("weighted_rating_value")
  private Integer weightedRatingValue = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("offers_first_party_delivery")
  private Boolean offersFirstPartyDelivery = null;
  @SerializedName("aggregated_rating_count")
  private Integer aggregatedRatingCount = null;
  @SerializedName("pickup_enabled")
  private Boolean pickupEnabled = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;
  @SerializedName("miles")
  private BigDecimal miles = null;
  @SerializedName("dollar_signs")
  private Integer dollarSigns = null;
  @SerializedName("delivery_enabled")
  private Boolean deliveryEnabled = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("phone_number")
  private BigDecimal phoneNumber = null;
  @SerializedName("_id")
  private String id = null;
  @SerializedName("local_hours")
  private SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getOffersThirdPartyDelivery() {
    return offersThirdPartyDelivery;
  }
  public void setOffersThirdPartyDelivery(Boolean offersThirdPartyDelivery) {
    this.offersThirdPartyDelivery = offersThirdPartyDelivery;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SearchRestaurants200ResponseRestaurantsInnerAddress getAddress() {
    return address;
  }
  public void setAddress(SearchRestaurants200ResponseRestaurantsInnerAddress address) {
    this.address = address;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getSupportsUpcCodes() {
    return supportsUpcCodes;
  }
  public void setSupportsUpcCodes(Boolean supportsUpcCodes) {
    this.supportsUpcCodes = supportsUpcCodes;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsOpen() {
    return isOpen;
  }
  public void setIsOpen(Boolean isOpen) {
    this.isOpen = isOpen;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getWeightedRatingValue() {
    return weightedRatingValue;
  }
  public void setWeightedRatingValue(Integer weightedRatingValue) {
    this.weightedRatingValue = weightedRatingValue;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getOffersFirstPartyDelivery() {
    return offersFirstPartyDelivery;
  }
  public void setOffersFirstPartyDelivery(Boolean offersFirstPartyDelivery) {
    this.offersFirstPartyDelivery = offersFirstPartyDelivery;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAggregatedRatingCount() {
    return aggregatedRatingCount;
  }
  public void setAggregatedRatingCount(Integer aggregatedRatingCount) {
    this.aggregatedRatingCount = aggregatedRatingCount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getPickupEnabled() {
    return pickupEnabled;
  }
  public void setPickupEnabled(Boolean pickupEnabled) {
    this.pickupEnabled = pickupEnabled;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getCuisines() {
    return cuisines;
  }
  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getMiles() {
    return miles;
  }
  public void setMiles(BigDecimal miles) {
    this.miles = miles;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getDollarSigns() {
    return dollarSigns;
  }
  public void setDollarSigns(Integer dollarSigns) {
    this.dollarSigns = dollarSigns;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getDeliveryEnabled() {
    return deliveryEnabled;
  }
  public void setDeliveryEnabled(Boolean deliveryEnabled) {
    this.deliveryEnabled = deliveryEnabled;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPhoneNumber() {
    return phoneNumber;
  }
  public void setPhoneNumber(BigDecimal phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SearchRestaurants200ResponseRestaurantsInnerLocalHours getLocalHours() {
    return localHours;
  }
  public void setLocalHours(SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours) {
    this.localHours = localHours;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200ResponseRestaurantsInner searchRestaurants200ResponseRestaurantsInner = (SearchRestaurants200ResponseRestaurantsInner) o;
    return (this.offersThirdPartyDelivery == null ? searchRestaurants200ResponseRestaurantsInner.offersThirdPartyDelivery == null : this.offersThirdPartyDelivery.equals(searchRestaurants200ResponseRestaurantsInner.offersThirdPartyDelivery)) &&
        (this.address == null ? searchRestaurants200ResponseRestaurantsInner.address == null : this.address.equals(searchRestaurants200ResponseRestaurantsInner.address)) &&
        (this.supportsUpcCodes == null ? searchRestaurants200ResponseRestaurantsInner.supportsUpcCodes == null : this.supportsUpcCodes.equals(searchRestaurants200ResponseRestaurantsInner.supportsUpcCodes)) &&
        (this.isOpen == null ? searchRestaurants200ResponseRestaurantsInner.isOpen == null : this.isOpen.equals(searchRestaurants200ResponseRestaurantsInner.isOpen)) &&
        (this.description == null ? searchRestaurants200ResponseRestaurantsInner.description == null : this.description.equals(searchRestaurants200ResponseRestaurantsInner.description)) &&
        (this.weightedRatingValue == null ? searchRestaurants200ResponseRestaurantsInner.weightedRatingValue == null : this.weightedRatingValue.equals(searchRestaurants200ResponseRestaurantsInner.weightedRatingValue)) &&
        (this.type == null ? searchRestaurants200ResponseRestaurantsInner.type == null : this.type.equals(searchRestaurants200ResponseRestaurantsInner.type)) &&
        (this.offersFirstPartyDelivery == null ? searchRestaurants200ResponseRestaurantsInner.offersFirstPartyDelivery == null : this.offersFirstPartyDelivery.equals(searchRestaurants200ResponseRestaurantsInner.offersFirstPartyDelivery)) &&
        (this.aggregatedRatingCount == null ? searchRestaurants200ResponseRestaurantsInner.aggregatedRatingCount == null : this.aggregatedRatingCount.equals(searchRestaurants200ResponseRestaurantsInner.aggregatedRatingCount)) &&
        (this.pickupEnabled == null ? searchRestaurants200ResponseRestaurantsInner.pickupEnabled == null : this.pickupEnabled.equals(searchRestaurants200ResponseRestaurantsInner.pickupEnabled)) &&
        (this.cuisines == null ? searchRestaurants200ResponseRestaurantsInner.cuisines == null : this.cuisines.equals(searchRestaurants200ResponseRestaurantsInner.cuisines)) &&
        (this.miles == null ? searchRestaurants200ResponseRestaurantsInner.miles == null : this.miles.equals(searchRestaurants200ResponseRestaurantsInner.miles)) &&
        (this.dollarSigns == null ? searchRestaurants200ResponseRestaurantsInner.dollarSigns == null : this.dollarSigns.equals(searchRestaurants200ResponseRestaurantsInner.dollarSigns)) &&
        (this.deliveryEnabled == null ? searchRestaurants200ResponseRestaurantsInner.deliveryEnabled == null : this.deliveryEnabled.equals(searchRestaurants200ResponseRestaurantsInner.deliveryEnabled)) &&
        (this.name == null ? searchRestaurants200ResponseRestaurantsInner.name == null : this.name.equals(searchRestaurants200ResponseRestaurantsInner.name)) &&
        (this.phoneNumber == null ? searchRestaurants200ResponseRestaurantsInner.phoneNumber == null : this.phoneNumber.equals(searchRestaurants200ResponseRestaurantsInner.phoneNumber)) &&
        (this.id == null ? searchRestaurants200ResponseRestaurantsInner.id == null : this.id.equals(searchRestaurants200ResponseRestaurantsInner.id)) &&
        (this.localHours == null ? searchRestaurants200ResponseRestaurantsInner.localHours == null : this.localHours.equals(searchRestaurants200ResponseRestaurantsInner.localHours));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.offersThirdPartyDelivery == null ? 0: this.offersThirdPartyDelivery.hashCode());
    result = 31 * result + (this.address == null ? 0: this.address.hashCode());
    result = 31 * result + (this.supportsUpcCodes == null ? 0: this.supportsUpcCodes.hashCode());
    result = 31 * result + (this.isOpen == null ? 0: this.isOpen.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.weightedRatingValue == null ? 0: this.weightedRatingValue.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.offersFirstPartyDelivery == null ? 0: this.offersFirstPartyDelivery.hashCode());
    result = 31 * result + (this.aggregatedRatingCount == null ? 0: this.aggregatedRatingCount.hashCode());
    result = 31 * result + (this.pickupEnabled == null ? 0: this.pickupEnabled.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    result = 31 * result + (this.miles == null ? 0: this.miles.hashCode());
    result = 31 * result + (this.dollarSigns == null ? 0: this.dollarSigns.hashCode());
    result = 31 * result + (this.deliveryEnabled == null ? 0: this.deliveryEnabled.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.phoneNumber == null ? 0: this.phoneNumber.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.localHours == null ? 0: this.localHours.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurants200ResponseRestaurantsInner {\n");
    
    sb.append("  offersThirdPartyDelivery: ").append(offersThirdPartyDelivery).append("\n");
    sb.append("  address: ").append(address).append("\n");
    sb.append("  supportsUpcCodes: ").append(supportsUpcCodes).append("\n");
    sb.append("  isOpen: ").append(isOpen).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  weightedRatingValue: ").append(weightedRatingValue).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  offersFirstPartyDelivery: ").append(offersFirstPartyDelivery).append("\n");
    sb.append("  aggregatedRatingCount: ").append(aggregatedRatingCount).append("\n");
    sb.append("  pickupEnabled: ").append(pickupEnabled).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("  miles: ").append(miles).append("\n");
    sb.append("  dollarSigns: ").append(dollarSigns).append("\n");
    sb.append("  deliveryEnabled: ").append(deliveryEnabled).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  phoneNumber: ").append(phoneNumber).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  localHours: ").append(localHours).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
