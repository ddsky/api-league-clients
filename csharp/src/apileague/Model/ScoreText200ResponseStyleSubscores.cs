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
    /// ScoreText200ResponseStyleSubscores
    /// </summary>
    [DataContract(Name = "scoreText_200_response_style_subscores")]
    public partial class ScoreText200ResponseStyleSubscores : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ScoreText200ResponseStyleSubscores" /> class.
        /// </summary>
        /// <param name="abbreviationScore">abbreviationScore.</param>
        /// <param name="styleScore">styleScore.</param>
        /// <param name="spellingScore">spellingScore.</param>
        public ScoreText200ResponseStyleSubscores(List<int> abbreviationScore = default(List<int>), List<int> styleScore = default(List<int>), List<int> spellingScore = default(List<int>))
        {
            this.AbbreviationScore = abbreviationScore;
            this.StyleScore = styleScore;
            this.SpellingScore = spellingScore;
        }

        /// <summary>
        /// Gets or Sets AbbreviationScore
        /// </summary>
        [DataMember(Name = "abbreviation_score", EmitDefaultValue = false)]
        public List<int> AbbreviationScore { get; set; }

        /// <summary>
        /// Gets or Sets StyleScore
        /// </summary>
        [DataMember(Name = "style_score", EmitDefaultValue = false)]
        public List<int> StyleScore { get; set; }

        /// <summary>
        /// Gets or Sets SpellingScore
        /// </summary>
        [DataMember(Name = "spelling_score", EmitDefaultValue = false)]
        public List<int> SpellingScore { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ScoreText200ResponseStyleSubscores {\n");
            sb.Append("  AbbreviationScore: ").Append(AbbreviationScore).Append("\n");
            sb.Append("  StyleScore: ").Append(StyleScore).Append("\n");
            sb.Append("  SpellingScore: ").Append(SpellingScore).Append("\n");
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