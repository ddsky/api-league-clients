/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
    /// DetectSentiment200ResponseDocument
    /// </summary>
    [DataContract(Name = "detectSentiment_200_response_document")]
    public partial class DetectSentiment200ResponseDocument : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectSentiment200ResponseDocument" /> class.
        /// </summary>
        /// <param name="sentiment">sentiment.</param>
        /// <param name="confidence">confidence.</param>
        /// <param name="averageConfidence">averageConfidence.</param>
        public DetectSentiment200ResponseDocument(string sentiment = default(string), int confidence = default(int), int averageConfidence = default(int))
        {
            this.Sentiment = sentiment;
            this.Confidence = confidence;
            this.AverageConfidence = averageConfidence;
        }

        /// <summary>
        /// Gets or Sets Sentiment
        /// </summary>
        [DataMember(Name = "sentiment", EmitDefaultValue = true)]
        public string Sentiment { get; set; }

        /// <summary>
        /// Gets or Sets Confidence
        /// </summary>
        [DataMember(Name = "confidence", EmitDefaultValue = false)]
        public int Confidence { get; set; }

        /// <summary>
        /// Gets or Sets AverageConfidence
        /// </summary>
        [DataMember(Name = "average_confidence", EmitDefaultValue = false)]
        public int AverageConfidence { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DetectSentiment200ResponseDocument {\n");
            sb.Append("  Sentiment: ").Append(Sentiment).Append("\n");
            sb.Append("  Confidence: ").Append(Confidence).Append("\n");
            sb.Append("  AverageConfidence: ").Append(AverageConfidence).Append("\n");
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
