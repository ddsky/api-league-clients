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
    /// RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformation_200_response_ingredients_inner_measures_metric")]
    public partial class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric" /> class.
        /// </summary>
        /// <param name="unitShort">unitShort.</param>
        /// <param name="amount">amount.</param>
        /// <param name="unitLong">unitLong.</param>
        public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric(string unitShort = default(string), decimal amount = default(decimal), string unitLong = default(string))
        {
            this.UnitShort = unitShort;
            this.Amount = amount;
            this.UnitLong = unitLong;
        }

        /// <summary>
        /// Gets or Sets UnitShort
        /// </summary>
        [DataMember(Name = "unit_short", EmitDefaultValue = true)]
        public string UnitShort { get; set; }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name = "amount", EmitDefaultValue = false)]
        public decimal Amount { get; set; }

        /// <summary>
        /// Gets or Sets UnitLong
        /// </summary>
        [DataMember(Name = "unit_long", EmitDefaultValue = true)]
        public string UnitLong { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {\n");
            sb.Append("  UnitShort: ").Append(UnitShort).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  UnitLong: ").Append(UnitLong).Append("\n");
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
