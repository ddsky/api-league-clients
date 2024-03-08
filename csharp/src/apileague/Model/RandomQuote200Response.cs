/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
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
    /// RandomQuote200Response
    /// </summary>
    [DataContract(Name = "randomQuote_200_response")]
    public partial class RandomQuote200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RandomQuote200Response" /> class.
        /// </summary>
        /// <param name="author">author.</param>
        /// <param name="quote">quote.</param>
        public RandomQuote200Response(string author = default(string), string quote = default(string))
        {
            this.Author = author;
            this.Quote = quote;
        }

        /// <summary>
        /// Gets or Sets Author
        /// </summary>
        [DataMember(Name = "author", EmitDefaultValue = true)]
        public string Author { get; set; }

        /// <summary>
        /// Gets or Sets Quote
        /// </summary>
        [DataMember(Name = "quote", EmitDefaultValue = true)]
        public string Quote { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RandomQuote200Response {\n");
            sb.Append("  Author: ").Append(Author).Append("\n");
            sb.Append("  Quote: ").Append(Quote).Append("\n");
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