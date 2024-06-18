/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
    /// SearchRestaurants200Response
    /// </summary>
    [DataContract(Name = "searchRestaurants_200_response")]
    public partial class SearchRestaurants200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurants200Response" /> class.
        /// </summary>
        /// <param name="restaurants">restaurants.</param>
        public SearchRestaurants200Response(List<SearchRestaurants200ResponseRestaurantsInner> restaurants = default(List<SearchRestaurants200ResponseRestaurantsInner>))
        {
            this.Restaurants = restaurants;
        }

        /// <summary>
        /// Gets or Sets Restaurants
        /// </summary>
        [DataMember(Name = "restaurants", EmitDefaultValue = false)]
        public List<SearchRestaurants200ResponseRestaurantsInner> Restaurants { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurants200Response {\n");
            sb.Append("  Restaurants: ").Append(Restaurants).Append("\n");
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
