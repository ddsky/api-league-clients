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
    /// ScoreText200ResponseSkimmability
    /// </summary>
    [DataContract(Name = "scoreText_200_response_skimmability")]
    public partial class ScoreText200ResponseSkimmability : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ScoreText200ResponseSkimmability" /> class.
        /// </summary>
        /// <param name="mainscores">mainscores.</param>
        /// <param name="subscores">subscores.</param>
        public ScoreText200ResponseSkimmability(ScoreText200ResponseSkimmabilityMainscores mainscores = default(ScoreText200ResponseSkimmabilityMainscores), ScoreText200ResponseSkimmabilitySubscores subscores = default(ScoreText200ResponseSkimmabilitySubscores))
        {
            this.Mainscores = mainscores;
            this.Subscores = subscores;
        }

        /// <summary>
        /// Gets or Sets Mainscores
        /// </summary>
        [DataMember(Name = "mainscores", EmitDefaultValue = false)]
        public ScoreText200ResponseSkimmabilityMainscores Mainscores { get; set; }

        /// <summary>
        /// Gets or Sets Subscores
        /// </summary>
        [DataMember(Name = "subscores", EmitDefaultValue = false)]
        public ScoreText200ResponseSkimmabilitySubscores Subscores { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ScoreText200ResponseSkimmability {\n");
            sb.Append("  Mainscores: ").Append(Mainscores).Append("\n");
            sb.Append("  Subscores: ").Append(Subscores).Append("\n");
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
