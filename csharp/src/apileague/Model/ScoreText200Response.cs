/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
    /// ScoreText200Response
    /// </summary>
    [DataContract(Name = "scoreText_200_response")]
    public partial class ScoreText200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ScoreText200Response" /> class.
        /// </summary>
        /// <param name="numberOfWords">numberOfWords.</param>
        /// <param name="numberOfSentences">numberOfSentences.</param>
        /// <param name="readability">readability.</param>
        /// <param name="skimmability">skimmability.</param>
        /// <param name="interestingness">interestingness.</param>
        /// <param name="style">style.</param>
        /// <param name="totalScore">totalScore.</param>
        public ScoreText200Response(int numberOfWords = default(int), int numberOfSentences = default(int), ScoreText200ResponseReadability readability = default(ScoreText200ResponseReadability), ScoreText200ResponseSkimmability skimmability = default(ScoreText200ResponseSkimmability), ScoreText200ResponseInterestingness interestingness = default(ScoreText200ResponseInterestingness), ScoreText200ResponseStyle style = default(ScoreText200ResponseStyle), decimal totalScore = default(decimal))
        {
            this.NumberOfWords = numberOfWords;
            this.NumberOfSentences = numberOfSentences;
            this.Readability = readability;
            this.Skimmability = skimmability;
            this.Interestingness = interestingness;
            this.Style = style;
            this.TotalScore = totalScore;
        }

        /// <summary>
        /// Gets or Sets NumberOfWords
        /// </summary>
        [DataMember(Name = "number_of_words", EmitDefaultValue = false)]
        public int NumberOfWords { get; set; }

        /// <summary>
        /// Gets or Sets NumberOfSentences
        /// </summary>
        [DataMember(Name = "number_of_sentences", EmitDefaultValue = false)]
        public int NumberOfSentences { get; set; }

        /// <summary>
        /// Gets or Sets Readability
        /// </summary>
        [DataMember(Name = "readability", EmitDefaultValue = false)]
        public ScoreText200ResponseReadability Readability { get; set; }

        /// <summary>
        /// Gets or Sets Skimmability
        /// </summary>
        [DataMember(Name = "skimmability", EmitDefaultValue = false)]
        public ScoreText200ResponseSkimmability Skimmability { get; set; }

        /// <summary>
        /// Gets or Sets Interestingness
        /// </summary>
        [DataMember(Name = "interestingness", EmitDefaultValue = false)]
        public ScoreText200ResponseInterestingness Interestingness { get; set; }

        /// <summary>
        /// Gets or Sets Style
        /// </summary>
        [DataMember(Name = "style", EmitDefaultValue = false)]
        public ScoreText200ResponseStyle Style { get; set; }

        /// <summary>
        /// Gets or Sets TotalScore
        /// </summary>
        [DataMember(Name = "total_score", EmitDefaultValue = false)]
        public decimal TotalScore { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ScoreText200Response {\n");
            sb.Append("  NumberOfWords: ").Append(NumberOfWords).Append("\n");
            sb.Append("  NumberOfSentences: ").Append(NumberOfSentences).Append("\n");
            sb.Append("  Readability: ").Append(Readability).Append("\n");
            sb.Append("  Skimmability: ").Append(Skimmability).Append("\n");
            sb.Append("  Interestingness: ").Append(Interestingness).Append("\n");
            sb.Append("  Style: ").Append(Style).Append("\n");
            sb.Append("  TotalScore: ").Append(TotalScore).Append("\n");
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
