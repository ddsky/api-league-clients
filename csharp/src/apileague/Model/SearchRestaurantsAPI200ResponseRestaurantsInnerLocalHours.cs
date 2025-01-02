/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
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
    /// SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours
    /// </summary>
    [DataContract(Name = "searchRestaurantsAPI_200_response_restaurants_inner_local_hours")]
    public partial class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours" /> class.
        /// </summary>
        /// <param name="operational">operational.</param>
        /// <param name="delivery">delivery.</param>
        /// <param name="pickup">pickup.</param>
        /// <param name="dineIn">dineIn.</param>
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational operational = default(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational), SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational delivery = default(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational), SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational pickup = default(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational), SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational dineIn = default(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational))
        {
            this.Operational = operational;
            this.Delivery = delivery;
            this.Pickup = pickup;
            this.DineIn = dineIn;
        }

        /// <summary>
        /// Gets or Sets Operational
        /// </summary>
        [DataMember(Name = "operational", EmitDefaultValue = false)]
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational Operational { get; set; }

        /// <summary>
        /// Gets or Sets Delivery
        /// </summary>
        [DataMember(Name = "delivery", EmitDefaultValue = false)]
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational Delivery { get; set; }

        /// <summary>
        /// Gets or Sets Pickup
        /// </summary>
        [DataMember(Name = "pickup", EmitDefaultValue = false)]
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational Pickup { get; set; }

        /// <summary>
        /// Gets or Sets DineIn
        /// </summary>
        [DataMember(Name = "dine_in", EmitDefaultValue = false)]
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational DineIn { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours {\n");
            sb.Append("  Operational: ").Append(Operational).Append("\n");
            sb.Append("  Delivery: ").Append(Delivery).Append("\n");
            sb.Append("  Pickup: ").Append(Pickup).Append("\n");
            sb.Append("  DineIn: ").Append(DineIn).Append("\n");
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
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
