/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
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
    /// SearchJokes200Response
    /// </summary>
    [DataContract(Name = "searchJokes_200_response")]
    public partial class SearchJokes200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchJokes200Response" /> class.
        /// </summary>
        /// <param name="jokes">jokes.</param>
        /// <param name="available">available.</param>
        public SearchJokes200Response(List<SearchJokes200ResponseJokesInner> jokes = default(List<SearchJokes200ResponseJokesInner>), int available = default(int))
        {
            this.Jokes = jokes;
            this.Available = available;
        }

        /// <summary>
        /// Gets or Sets Jokes
        /// </summary>
        [DataMember(Name = "jokes", EmitDefaultValue = false)]
        public List<SearchJokes200ResponseJokesInner> Jokes { get; set; }

        /// <summary>
        /// Gets or Sets Available
        /// </summary>
        [DataMember(Name = "available", EmitDefaultValue = false)]
        public int Available { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchJokes200Response {\n");
            sb.Append("  Jokes: ").Append(Jokes).Append("\n");
            sb.Append("  Available: ").Append(Available).Append("\n");
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
