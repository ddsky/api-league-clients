/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
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
    /// RandomRiddle200Response
    /// </summary>
    [DataContract(Name = "randomRiddle_200_response")]
    public partial class RandomRiddle200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RandomRiddle200Response" /> class.
        /// </summary>
        /// <param name="riddle">riddle.</param>
        /// <param name="answer">answer.</param>
        /// <param name="difficulty">difficulty.</param>
        public RandomRiddle200Response(string riddle = default(string), string answer = default(string), string difficulty = default(string))
        {
            this.Riddle = riddle;
            this.Answer = answer;
            this.Difficulty = difficulty;
        }

        /// <summary>
        /// Gets or Sets Riddle
        /// </summary>
        [DataMember(Name = "riddle", EmitDefaultValue = true)]
        public string Riddle { get; set; }

        /// <summary>
        /// Gets or Sets Answer
        /// </summary>
        [DataMember(Name = "answer", EmitDefaultValue = true)]
        public string Answer { get; set; }

        /// <summary>
        /// Gets or Sets Difficulty
        /// </summary>
        [DataMember(Name = "difficulty", EmitDefaultValue = true)]
        public string Difficulty { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RandomRiddle200Response {\n");
            sb.Append("  Riddle: ").Append(Riddle).Append("\n");
            sb.Append("  Answer: ").Append(Answer).Append("\n");
            sb.Append("  Difficulty: ").Append(Difficulty).Append("\n");
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
