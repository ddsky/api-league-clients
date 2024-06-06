/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
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
    /// RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformation_200_response_ingredients_inner_measures")]
    public partial class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformation200ResponseIngredientsInnerMeasures" /> class.
        /// </summary>
        /// <param name="metric">metric.</param>
        /// <param name="us">us.</param>
        public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric = default(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric), RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us = default(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric))
        {
            this.Metric = metric;
            this.Us = us;
        }

        /// <summary>
        /// Gets or Sets Metric
        /// </summary>
        [DataMember(Name = "metric", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric Metric { get; set; }

        /// <summary>
        /// Gets or Sets Us
        /// </summary>
        [DataMember(Name = "us", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric Us { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {\n");
            sb.Append("  Metric: ").Append(Metric).Append("\n");
            sb.Append("  Us: ").Append(Us).Append("\n");
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
