/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
    /// ScoreText200ResponseSkimmabilityMainscores
    /// </summary>
    [DataContract(Name = "scoreText_200_response_skimmability_mainscores")]
    public partial class ScoreText200ResponseSkimmabilityMainscores : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ScoreText200ResponseSkimmabilityMainscores" /> class.
        /// </summary>
        /// <param name="totalPossible">totalPossible.</param>
        /// <param name="total">total.</param>
        public ScoreText200ResponseSkimmabilityMainscores(int totalPossible = default(int), decimal total = default(decimal))
        {
            this.TotalPossible = totalPossible;
            this.Total = total;
        }

        /// <summary>
        /// Gets or Sets TotalPossible
        /// </summary>
        [DataMember(Name = "total_possible", EmitDefaultValue = false)]
        public int TotalPossible { get; set; }

        /// <summary>
        /// Gets or Sets Total
        /// </summary>
        [DataMember(Name = "total", EmitDefaultValue = false)]
        public decimal Total { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ScoreText200ResponseSkimmabilityMainscores {\n");
            sb.Append("  TotalPossible: ").Append(TotalPossible).Append("\n");
            sb.Append("  Total: ").Append(Total).Append("\n");
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
