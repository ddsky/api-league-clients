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
    /// ExtractAuthorsAPI200Response
    /// </summary>
    [DataContract(Name = "extractAuthorsAPI_200_response")]
    public partial class ExtractAuthorsAPI200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtractAuthorsAPI200Response" /> class.
        /// </summary>
        /// <param name="authors">authors.</param>
        public ExtractAuthorsAPI200Response(List<ExtractAuthorsAPI200ResponseAuthorsInner> authors = default(List<ExtractAuthorsAPI200ResponseAuthorsInner>))
        {
            this.Authors = authors;
        }

        /// <summary>
        /// Gets or Sets Authors
        /// </summary>
        [DataMember(Name = "authors", EmitDefaultValue = false)]
        public List<ExtractAuthorsAPI200ResponseAuthorsInner> Authors { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ExtractAuthorsAPI200Response {\n");
            sb.Append("  Authors: ").Append(Authors).Append("\n");
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
