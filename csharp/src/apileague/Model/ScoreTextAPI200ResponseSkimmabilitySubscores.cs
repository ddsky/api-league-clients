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
    /// ScoreTextAPI200ResponseSkimmabilitySubscores
    /// </summary>
    [DataContract(Name = "scoreTextAPI_200_response_skimmability_subscores")]
    public partial class ScoreTextAPI200ResponseSkimmabilitySubscores : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ScoreTextAPI200ResponseSkimmabilitySubscores" /> class.
        /// </summary>
        /// <param name="bulletPointRatioScore">bulletPointRatioScore.</param>
        /// <param name="imageScore">imageScore.</param>
        /// <param name="highlightedWordRatioScore">highlightedWordRatioScore.</param>
        /// <param name="videoScore">videoScore.</param>
        /// <param name="paragraphScore">paragraphScore.</param>
        /// <param name="paragraphHeadlineRatioScore">paragraphHeadlineRatioScore.</param>
        public ScoreTextAPI200ResponseSkimmabilitySubscores(List<int> bulletPointRatioScore = default(List<int>), List<int> imageScore = default(List<int>), List<int> highlightedWordRatioScore = default(List<int>), List<int> videoScore = default(List<int>), List<int> paragraphScore = default(List<int>), List<int> paragraphHeadlineRatioScore = default(List<int>))
        {
            this.BulletPointRatioScore = bulletPointRatioScore;
            this.ImageScore = imageScore;
            this.HighlightedWordRatioScore = highlightedWordRatioScore;
            this.VideoScore = videoScore;
            this.ParagraphScore = paragraphScore;
            this.ParagraphHeadlineRatioScore = paragraphHeadlineRatioScore;
        }

        /// <summary>
        /// Gets or Sets BulletPointRatioScore
        /// </summary>
        [DataMember(Name = "bullet_point_ratio_score", EmitDefaultValue = false)]
        public List<int> BulletPointRatioScore { get; set; }

        /// <summary>
        /// Gets or Sets ImageScore
        /// </summary>
        [DataMember(Name = "image_score", EmitDefaultValue = false)]
        public List<int> ImageScore { get; set; }

        /// <summary>
        /// Gets or Sets HighlightedWordRatioScore
        /// </summary>
        [DataMember(Name = "highlighted_word_ratio_score", EmitDefaultValue = false)]
        public List<int> HighlightedWordRatioScore { get; set; }

        /// <summary>
        /// Gets or Sets VideoScore
        /// </summary>
        [DataMember(Name = "video_score", EmitDefaultValue = false)]
        public List<int> VideoScore { get; set; }

        /// <summary>
        /// Gets or Sets ParagraphScore
        /// </summary>
        [DataMember(Name = "paragraph_score", EmitDefaultValue = false)]
        public List<int> ParagraphScore { get; set; }

        /// <summary>
        /// Gets or Sets ParagraphHeadlineRatioScore
        /// </summary>
        [DataMember(Name = "paragraph_headline_ratio_score", EmitDefaultValue = false)]
        public List<int> ParagraphHeadlineRatioScore { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ScoreTextAPI200ResponseSkimmabilitySubscores {\n");
            sb.Append("  BulletPointRatioScore: ").Append(BulletPointRatioScore).Append("\n");
            sb.Append("  ImageScore: ").Append(ImageScore).Append("\n");
            sb.Append("  HighlightedWordRatioScore: ").Append(HighlightedWordRatioScore).Append("\n");
            sb.Append("  VideoScore: ").Append(VideoScore).Append("\n");
            sb.Append("  ParagraphScore: ").Append(ParagraphScore).Append("\n");
            sb.Append("  ParagraphHeadlineRatioScore: ").Append(ParagraphHeadlineRatioScore).Append("\n");
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