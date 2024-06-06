/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = apileague.Client.OpenAPIDateConverter;

namespace apileague.Model
{
    /// <summary>
    /// SearchRestaurants200ResponseRestaurantsInner
    /// </summary>
    [DataContract(Name = "searchRestaurants_200_response_restaurants_inner")]
    public partial class SearchRestaurants200ResponseRestaurantsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurants200ResponseRestaurantsInner" /> class.
        /// </summary>
        /// <param name="offersThirdPartyDelivery">offersThirdPartyDelivery.</param>
        /// <param name="address">address.</param>
        /// <param name="supportsUpcCodes">supportsUpcCodes.</param>
        /// <param name="isOpen">isOpen.</param>
        /// <param name="description">description.</param>
        /// <param name="weightedRatingValue">weightedRatingValue.</param>
        /// <param name="type">type.</param>
        /// <param name="offersFirstPartyDelivery">offersFirstPartyDelivery.</param>
        /// <param name="aggregatedRatingCount">aggregatedRatingCount.</param>
        /// <param name="pickupEnabled">pickupEnabled.</param>
        /// <param name="cuisines">cuisines.</param>
        /// <param name="miles">miles.</param>
        /// <param name="dollarSigns">dollarSigns.</param>
        /// <param name="deliveryEnabled">deliveryEnabled.</param>
        /// <param name="name">name.</param>
        /// <param name="phoneNumber">phoneNumber.</param>
        /// <param name="id">id.</param>
        /// <param name="localHours">localHours.</param>
        public SearchRestaurants200ResponseRestaurantsInner(bool offersThirdPartyDelivery = default(bool), SearchRestaurants200ResponseRestaurantsInnerAddress address = default(SearchRestaurants200ResponseRestaurantsInnerAddress), bool supportsUpcCodes = default(bool), bool isOpen = default(bool), string description = default(string), int weightedRatingValue = default(int), string type = default(string), bool offersFirstPartyDelivery = default(bool), int aggregatedRatingCount = default(int), bool pickupEnabled = default(bool), List<string> cuisines = default(List<string>), decimal miles = default(decimal), int dollarSigns = default(int), bool deliveryEnabled = default(bool), string name = default(string), decimal phoneNumber = default(decimal), string id = default(string), SearchRestaurants200ResponseRestaurantsInnerLocalHours localHours = default(SearchRestaurants200ResponseRestaurantsInnerLocalHours))
        {
            this.OffersThirdPartyDelivery = offersThirdPartyDelivery;
            this.Address = address;
            this.SupportsUpcCodes = supportsUpcCodes;
            this.IsOpen = isOpen;
            this.Description = description;
            this.WeightedRatingValue = weightedRatingValue;
            this.Type = type;
            this.OffersFirstPartyDelivery = offersFirstPartyDelivery;
            this.AggregatedRatingCount = aggregatedRatingCount;
            this.PickupEnabled = pickupEnabled;
            this.Cuisines = cuisines;
            this.Miles = miles;
            this.DollarSigns = dollarSigns;
            this.DeliveryEnabled = deliveryEnabled;
            this.Name = name;
            this.PhoneNumber = phoneNumber;
            this.Id = id;
            this.LocalHours = localHours;
        }

        /// <summary>
        /// Gets or Sets OffersThirdPartyDelivery
        /// </summary>
        [DataMember(Name = "offers_third_party_delivery", EmitDefaultValue = true)]
        public bool OffersThirdPartyDelivery { get; set; }

        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name = "address", EmitDefaultValue = false)]
        public SearchRestaurants200ResponseRestaurantsInnerAddress Address { get; set; }

        /// <summary>
        /// Gets or Sets SupportsUpcCodes
        /// </summary>
        [DataMember(Name = "supports_upc_codes", EmitDefaultValue = true)]
        public bool SupportsUpcCodes { get; set; }

        /// <summary>
        /// Gets or Sets IsOpen
        /// </summary>
        [DataMember(Name = "is_open", EmitDefaultValue = true)]
        public bool IsOpen { get; set; }

        /// <summary>
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name = "description", EmitDefaultValue = true)]
        public string Description { get; set; }

        /// <summary>
        /// Gets or Sets WeightedRatingValue
        /// </summary>
        [DataMember(Name = "weighted_rating_value", EmitDefaultValue = false)]
        public int WeightedRatingValue { get; set; }

        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [DataMember(Name = "type", EmitDefaultValue = true)]
        public string Type { get; set; }

        /// <summary>
        /// Gets or Sets OffersFirstPartyDelivery
        /// </summary>
        [DataMember(Name = "offers_first_party_delivery", EmitDefaultValue = true)]
        public bool OffersFirstPartyDelivery { get; set; }

        /// <summary>
        /// Gets or Sets AggregatedRatingCount
        /// </summary>
        [DataMember(Name = "aggregated_rating_count", EmitDefaultValue = false)]
        public int AggregatedRatingCount { get; set; }

        /// <summary>
        /// Gets or Sets PickupEnabled
        /// </summary>
        [DataMember(Name = "pickup_enabled", EmitDefaultValue = true)]
        public bool PickupEnabled { get; set; }

        /// <summary>
        /// Gets or Sets Cuisines
        /// </summary>
        [DataMember(Name = "cuisines", EmitDefaultValue = false)]
        public List<string> Cuisines { get; set; }

        /// <summary>
        /// Gets or Sets Miles
        /// </summary>
        [DataMember(Name = "miles", EmitDefaultValue = false)]
        public decimal Miles { get; set; }

        /// <summary>
        /// Gets or Sets DollarSigns
        /// </summary>
        [DataMember(Name = "dollar_signs", EmitDefaultValue = false)]
        public int DollarSigns { get; set; }

        /// <summary>
        /// Gets or Sets DeliveryEnabled
        /// </summary>
        [DataMember(Name = "delivery_enabled", EmitDefaultValue = true)]
        public bool DeliveryEnabled { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets PhoneNumber
        /// </summary>
        [DataMember(Name = "phone_number", EmitDefaultValue = false)]
        public decimal PhoneNumber { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "_id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets LocalHours
        /// </summary>
        [DataMember(Name = "local_hours", EmitDefaultValue = false)]
        public SearchRestaurants200ResponseRestaurantsInnerLocalHours LocalHours { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurants200ResponseRestaurantsInner {\n");
            sb.Append("  OffersThirdPartyDelivery: ").Append(OffersThirdPartyDelivery).Append("\n");
            sb.Append("  Address: ").Append(Address).Append("\n");
            sb.Append("  SupportsUpcCodes: ").Append(SupportsUpcCodes).Append("\n");
            sb.Append("  IsOpen: ").Append(IsOpen).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  WeightedRatingValue: ").Append(WeightedRatingValue).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  OffersFirstPartyDelivery: ").Append(OffersFirstPartyDelivery).Append("\n");
            sb.Append("  AggregatedRatingCount: ").Append(AggregatedRatingCount).Append("\n");
            sb.Append("  PickupEnabled: ").Append(PickupEnabled).Append("\n");
            sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
            sb.Append("  Miles: ").Append(Miles).Append("\n");
            sb.Append("  DollarSigns: ").Append(DollarSigns).Append("\n");
            sb.Append("  DeliveryEnabled: ").Append(DeliveryEnabled).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  PhoneNumber: ").Append(PhoneNumber).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  LocalHours: ").Append(LocalHours).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
