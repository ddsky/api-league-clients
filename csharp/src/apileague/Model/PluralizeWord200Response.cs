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
    /// PluralizeWord200Response
    /// </summary>
    [DataContract(Name = "pluralizeWord_200_response")]
    public partial class PluralizeWord200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PluralizeWord200Response" /> class.
        /// </summary>
        /// <param name="original">original.</param>
        /// <param name="plural">plural.</param>
        public PluralizeWord200Response(string original = default(string), string plural = default(string))
        {
            this.Original = original;
            this.Plural = plural;
        }

        /// <summary>
        /// Gets or Sets Original
        /// </summary>
        [DataMember(Name = "original", EmitDefaultValue = true)]
        public string Original { get; set; }

        /// <summary>
        /// Gets or Sets Plural
        /// </summary>
        [DataMember(Name = "plural", EmitDefaultValue = true)]
        public string Plural { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class PluralizeWord200Response {\n");
            sb.Append("  Original: ").Append(Original).Append("\n");
            sb.Append("  Plural: ").Append(Plural).Append("\n");
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
