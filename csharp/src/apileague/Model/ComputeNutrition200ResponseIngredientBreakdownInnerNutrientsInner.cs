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
    /// ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
    /// </summary>
    [DataContract(Name = "computeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner")]
    public partial class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner" /> class.
        /// </summary>
        /// <param name="name">name.</param>
        /// <param name="percentOfDailyNeeds">percentOfDailyNeeds.</param>
        /// <param name="amount">amount.</param>
        /// <param name="unit">unit.</param>
        public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(string name = default(string), int percentOfDailyNeeds = default(int), int amount = default(int), string unit = default(string))
        {
            this.Name = name;
            this.PercentOfDailyNeeds = percentOfDailyNeeds;
            this.Amount = amount;
            this.Unit = unit;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets PercentOfDailyNeeds
        /// </summary>
        [DataMember(Name = "percent_of_daily_needs", EmitDefaultValue = false)]
        public int PercentOfDailyNeeds { get; set; }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name = "amount", EmitDefaultValue = false)]
        public int Amount { get; set; }

        /// <summary>
        /// Gets or Sets Unit
        /// </summary>
        [DataMember(Name = "unit", EmitDefaultValue = true)]
        public string Unit { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  PercentOfDailyNeeds: ").Append(PercentOfDailyNeeds).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
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
