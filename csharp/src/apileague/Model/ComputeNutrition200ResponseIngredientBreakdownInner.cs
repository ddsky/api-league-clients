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
    /// ComputeNutrition200ResponseIngredientBreakdownInner
    /// </summary>
    [DataContract(Name = "computeNutrition_200_response_ingredient_breakdown_inner")]
    public partial class ComputeNutrition200ResponseIngredientBreakdownInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ComputeNutrition200ResponseIngredientBreakdownInner" /> class.
        /// </summary>
        /// <param name="name">name.</param>
        /// <param name="amount">amount.</param>
        /// <param name="unit">unit.</param>
        /// <param name="id">id.</param>
        /// <param name="nutrients">nutrients.</param>
        public ComputeNutrition200ResponseIngredientBreakdownInner(string name = default(string), int amount = default(int), string unit = default(string), int id = default(int), List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients = default(List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>))
        {
            this.Name = name;
            this.Amount = amount;
            this.Unit = unit;
            this.Id = id;
            this.Nutrients = nutrients;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

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
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Nutrients
        /// </summary>
        [DataMember(Name = "nutrients", EmitDefaultValue = false)]
        public List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> Nutrients { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ComputeNutrition200ResponseIngredientBreakdownInner {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Nutrients: ").Append(Nutrients).Append("\n");
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
