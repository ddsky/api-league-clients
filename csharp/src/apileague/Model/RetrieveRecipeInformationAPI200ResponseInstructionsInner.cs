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
    /// RetrieveRecipeInformationAPI200ResponseInstructionsInner
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformationAPI_200_response_instructions_inner")]
    public partial class RetrieveRecipeInformationAPI200ResponseInstructionsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformationAPI200ResponseInstructionsInner" /> class.
        /// </summary>
        /// <param name="name">name.</param>
        /// <param name="steps">steps.</param>
        public RetrieveRecipeInformationAPI200ResponseInstructionsInner(string name = default(string), List<RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner> steps = default(List<RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner>))
        {
            this.Name = name;
            this.Steps = steps;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Steps
        /// </summary>
        [DataMember(Name = "steps", EmitDefaultValue = false)]
        public List<RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner> Steps { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformationAPI200ResponseInstructionsInner {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Steps: ").Append(Steps).Append("\n");
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