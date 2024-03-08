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
    /// DetectSentiment200Response
    /// </summary>
    [DataContract(Name = "detectSentiment_200_response")]
    public partial class DetectSentiment200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectSentiment200Response" /> class.
        /// </summary>
        /// <param name="document">document.</param>
        /// <param name="sentences">sentences.</param>
        public DetectSentiment200Response(DetectSentiment200ResponseDocument document = default(DetectSentiment200ResponseDocument), List<DetectSentiment200ResponseSentencesInner> sentences = default(List<DetectSentiment200ResponseSentencesInner>))
        {
            this.Document = document;
            this.Sentences = sentences;
        }

        /// <summary>
        /// Gets or Sets Document
        /// </summary>
        [DataMember(Name = "document", EmitDefaultValue = false)]
        public DetectSentiment200ResponseDocument Document { get; set; }

        /// <summary>
        /// Gets or Sets Sentences
        /// </summary>
        [DataMember(Name = "sentences", EmitDefaultValue = false)]
        public List<DetectSentiment200ResponseSentencesInner> Sentences { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DetectSentiment200Response {\n");
            sb.Append("  Document: ").Append(Document).Append("\n");
            sb.Append("  Sentences: ").Append(Sentences).Append("\n");
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