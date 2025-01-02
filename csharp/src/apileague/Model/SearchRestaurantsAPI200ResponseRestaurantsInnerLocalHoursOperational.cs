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
    /// SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
    /// </summary>
    [DataContract(Name = "searchRestaurantsAPI_200_response_restaurants_inner_local_hours_operational")]
    public partial class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational" /> class.
        /// </summary>
        /// <param name="sunday">sunday.</param>
        /// <param name="saturday">saturday.</param>
        /// <param name="tuesday">tuesday.</param>
        /// <param name="thursday">thursday.</param>
        /// <param name="friday">friday.</param>
        /// <param name="wednesday">wednesday.</param>
        /// <param name="monday">monday.</param>
        public SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational(string sunday = default(string), string saturday = default(string), string tuesday = default(string), string thursday = default(string), string friday = default(string), string wednesday = default(string), string monday = default(string))
        {
            this.Sunday = sunday;
            this.Saturday = saturday;
            this.Tuesday = tuesday;
            this.Thursday = thursday;
            this.Friday = friday;
            this.Wednesday = wednesday;
            this.Monday = monday;
        }

        /// <summary>
        /// Gets or Sets Sunday
        /// </summary>
        [DataMember(Name = "sunday", EmitDefaultValue = true)]
        public string Sunday { get; set; }

        /// <summary>
        /// Gets or Sets Saturday
        /// </summary>
        [DataMember(Name = "saturday", EmitDefaultValue = true)]
        public string Saturday { get; set; }

        /// <summary>
        /// Gets or Sets Tuesday
        /// </summary>
        [DataMember(Name = "tuesday", EmitDefaultValue = true)]
        public string Tuesday { get; set; }

        /// <summary>
        /// Gets or Sets Thursday
        /// </summary>
        [DataMember(Name = "thursday", EmitDefaultValue = true)]
        public string Thursday { get; set; }

        /// <summary>
        /// Gets or Sets Friday
        /// </summary>
        [DataMember(Name = "friday", EmitDefaultValue = true)]
        public string Friday { get; set; }

        /// <summary>
        /// Gets or Sets Wednesday
        /// </summary>
        [DataMember(Name = "wednesday", EmitDefaultValue = true)]
        public string Wednesday { get; set; }

        /// <summary>
        /// Gets or Sets Monday
        /// </summary>
        [DataMember(Name = "monday", EmitDefaultValue = true)]
        public string Monday { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational {\n");
            sb.Append("  Sunday: ").Append(Sunday).Append("\n");
            sb.Append("  Saturday: ").Append(Saturday).Append("\n");
            sb.Append("  Tuesday: ").Append(Tuesday).Append("\n");
            sb.Append("  Thursday: ").Append(Thursday).Append("\n");
            sb.Append("  Friday: ").Append(Friday).Append("\n");
            sb.Append("  Wednesday: ").Append(Wednesday).Append("\n");
            sb.Append("  Monday: ").Append(Monday).Append("\n");
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
