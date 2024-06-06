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
    /// SearchJokes200ResponseJokesInner
    /// </summary>
    [DataContract(Name = "searchJokes_200_response_jokes_inner")]
    public partial class SearchJokes200ResponseJokesInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchJokes200ResponseJokesInner" /> class.
        /// </summary>
        /// <param name="joke">joke.</param>
        public SearchJokes200ResponseJokesInner(string joke = default(string))
        {
            this.Joke = joke;
        }

        /// <summary>
        /// Gets or Sets Joke
        /// </summary>
        [DataMember(Name = "joke", EmitDefaultValue = true)]
        public string Joke { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchJokes200ResponseJokesInner {\n");
            sb.Append("  Joke: ").Append(Joke).Append("\n");
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
