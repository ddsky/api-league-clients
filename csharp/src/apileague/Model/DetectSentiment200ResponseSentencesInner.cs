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
    /// DetectSentiment200ResponseSentencesInner
    /// </summary>
    [DataContract(Name = "detectSentiment_200_response_sentences_inner")]
    public partial class DetectSentiment200ResponseSentencesInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectSentiment200ResponseSentencesInner" /> class.
        /// </summary>
        /// <param name="length">length.</param>
        /// <param name="sentiment">sentiment.</param>
        /// <param name="offset">offset.</param>
        /// <param name="confidence">confidence.</param>
        public DetectSentiment200ResponseSentencesInner(int length = default(int), string sentiment = default(string), int offset = default(int), int confidence = default(int))
        {
            this.Length = length;
            this.Sentiment = sentiment;
            this.Offset = offset;
            this.Confidence = confidence;
        }

        /// <summary>
        /// Gets or Sets Length
        /// </summary>
        [DataMember(Name = "length", EmitDefaultValue = false)]
        public int Length { get; set; }

        /// <summary>
        /// Gets or Sets Sentiment
        /// </summary>
        [DataMember(Name = "sentiment", EmitDefaultValue = true)]
        public string Sentiment { get; set; }

        /// <summary>
        /// Gets or Sets Offset
        /// </summary>
        [DataMember(Name = "offset", EmitDefaultValue = false)]
        public int Offset { get; set; }

        /// <summary>
        /// Gets or Sets Confidence
        /// </summary>
        [DataMember(Name = "confidence", EmitDefaultValue = false)]
        public int Confidence { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DetectSentiment200ResponseSentencesInner {\n");
            sb.Append("  Length: ").Append(Length).Append("\n");
            sb.Append("  Sentiment: ").Append(Sentiment).Append("\n");
            sb.Append("  Offset: ").Append(Offset).Append("\n");
            sb.Append("  Confidence: ").Append(Confidence).Append("\n");
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
