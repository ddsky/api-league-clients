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
    /// CorrectSpelling200Response
    /// </summary>
    [DataContract(Name = "correctSpelling_200_response")]
    public partial class CorrectSpelling200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CorrectSpelling200Response" /> class.
        /// </summary>
        /// <param name="correctedText">correctedText.</param>
        public CorrectSpelling200Response(string correctedText = default(string))
        {
            this.CorrectedText = correctedText;
        }

        /// <summary>
        /// Gets or Sets CorrectedText
        /// </summary>
        [DataMember(Name = "corrected_text", EmitDefaultValue = true)]
        public string CorrectedText { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class CorrectSpelling200Response {\n");
            sb.Append("  CorrectedText: ").Append(CorrectedText).Append("\n");
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
