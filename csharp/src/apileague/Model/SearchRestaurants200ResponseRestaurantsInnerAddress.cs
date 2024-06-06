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
    /// SearchRestaurants200ResponseRestaurantsInnerAddress
    /// </summary>
    [DataContract(Name = "searchRestaurants_200_response_restaurants_inner_address")]
    public partial class SearchRestaurants200ResponseRestaurantsInnerAddress : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurants200ResponseRestaurantsInnerAddress" /> class.
        /// </summary>
        /// <param name="zipcode">zipcode.</param>
        /// <param name="country">country.</param>
        /// <param name="city">city.</param>
        /// <param name="latitude">latitude.</param>
        /// <param name="lon">lon.</param>
        /// <param name="streetAddr2">streetAddr2.</param>
        /// <param name="state">state.</param>
        /// <param name="streetAddr">streetAddr.</param>
        /// <param name="lat">lat.</param>
        /// <param name="longitude">longitude.</param>
        public SearchRestaurants200ResponseRestaurantsInnerAddress(string zipcode = default(string), string country = default(string), string city = default(string), decimal latitude = default(decimal), decimal lon = default(decimal), string streetAddr2 = default(string), string state = default(string), string streetAddr = default(string), decimal lat = default(decimal), decimal longitude = default(decimal))
        {
            this.Zipcode = zipcode;
            this.Country = country;
            this.City = city;
            this.Latitude = latitude;
            this.Lon = lon;
            this.StreetAddr2 = streetAddr2;
            this.State = state;
            this.StreetAddr = streetAddr;
            this.Lat = lat;
            this.Longitude = longitude;
        }

        /// <summary>
        /// Gets or Sets Zipcode
        /// </summary>
        [DataMember(Name = "zipcode", EmitDefaultValue = true)]
        public string Zipcode { get; set; }

        /// <summary>
        /// Gets or Sets Country
        /// </summary>
        [DataMember(Name = "country", EmitDefaultValue = true)]
        public string Country { get; set; }

        /// <summary>
        /// Gets or Sets City
        /// </summary>
        [DataMember(Name = "city", EmitDefaultValue = true)]
        public string City { get; set; }

        /// <summary>
        /// Gets or Sets Latitude
        /// </summary>
        [DataMember(Name = "latitude", EmitDefaultValue = false)]
        public decimal Latitude { get; set; }

        /// <summary>
        /// Gets or Sets Lon
        /// </summary>
        [DataMember(Name = "lon", EmitDefaultValue = false)]
        public decimal Lon { get; set; }

        /// <summary>
        /// Gets or Sets StreetAddr2
        /// </summary>
        [DataMember(Name = "street_addr_2", EmitDefaultValue = true)]
        public string StreetAddr2 { get; set; }

        /// <summary>
        /// Gets or Sets State
        /// </summary>
        [DataMember(Name = "state", EmitDefaultValue = true)]
        public string State { get; set; }

        /// <summary>
        /// Gets or Sets StreetAddr
        /// </summary>
        [DataMember(Name = "street_addr", EmitDefaultValue = true)]
        public string StreetAddr { get; set; }

        /// <summary>
        /// Gets or Sets Lat
        /// </summary>
        [DataMember(Name = "lat", EmitDefaultValue = false)]
        public decimal Lat { get; set; }

        /// <summary>
        /// Gets or Sets Longitude
        /// </summary>
        [DataMember(Name = "longitude", EmitDefaultValue = false)]
        public decimal Longitude { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurants200ResponseRestaurantsInnerAddress {\n");
            sb.Append("  Zipcode: ").Append(Zipcode).Append("\n");
            sb.Append("  Country: ").Append(Country).Append("\n");
            sb.Append("  City: ").Append(City).Append("\n");
            sb.Append("  Latitude: ").Append(Latitude).Append("\n");
            sb.Append("  Lon: ").Append(Lon).Append("\n");
            sb.Append("  StreetAddr2: ").Append(StreetAddr2).Append("\n");
            sb.Append("  State: ").Append(State).Append("\n");
            sb.Append("  StreetAddr: ").Append(StreetAddr).Append("\n");
            sb.Append("  Lat: ").Append(Lat).Append("\n");
            sb.Append("  Longitude: ").Append(Longitude).Append("\n");
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
