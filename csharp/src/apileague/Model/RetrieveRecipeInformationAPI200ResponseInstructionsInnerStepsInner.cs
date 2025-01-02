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
    /// RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner")]
    public partial class RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner" /> class.
        /// </summary>
        /// <param name="number">number.</param>
        /// <param name="ingredients">ingredients.</param>
        /// <param name="equipment">equipment.</param>
        /// <param name="step">step.</param>
        public RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner(int number = default(int), List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients = default(List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>), List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> equipment = default(List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>), string step = default(string))
        {
            this.Number = number;
            this.Ingredients = ingredients;
            this.Equipment = equipment;
            this.Step = step;
        }

        /// <summary>
        /// Gets or Sets Number
        /// </summary>
        [DataMember(Name = "number", EmitDefaultValue = false)]
        public int Number { get; set; }

        /// <summary>
        /// Gets or Sets Ingredients
        /// </summary>
        [DataMember(Name = "ingredients", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> Ingredients { get; set; }

        /// <summary>
        /// Gets or Sets Equipment
        /// </summary>
        [DataMember(Name = "equipment", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> Equipment { get; set; }

        /// <summary>
        /// Gets or Sets Step
        /// </summary>
        [DataMember(Name = "step", EmitDefaultValue = true)]
        public string Step { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner {\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
            sb.Append("  Equipment: ").Append(Equipment).Append("\n");
            sb.Append("  Step: ").Append(Step).Append("\n");
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