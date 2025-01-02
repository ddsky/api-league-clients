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
    /// SearchDrinksAPI200ResponseDrinksInnerNutrition
    /// </summary>
    [DataContract(Name = "searchDrinksAPI_200_response_drinks_inner_nutrition")]
    public partial class SearchDrinksAPI200ResponseDrinksInnerNutrition : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchDrinksAPI200ResponseDrinksInnerNutrition" /> class.
        /// </summary>
        /// <param name="weightPerServing">weightPerServing.</param>
        /// <param name="caloricBreakdown">caloricBreakdown.</param>
        /// <param name="flavonoids">flavonoids.</param>
        /// <param name="ingredientBreakdown">ingredientBreakdown.</param>
        /// <param name="properties">properties.</param>
        /// <param name="nutrients">nutrients.</param>
        public SearchDrinksAPI200ResponseDrinksInnerNutrition(SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing weightPerServing = default(SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing), SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown = default(SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown), List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids = default(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>), List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown = default(List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner>), List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> properties = default(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner>), List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients = default(List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner>))
        {
            this.WeightPerServing = weightPerServing;
            this.CaloricBreakdown = caloricBreakdown;
            this.Flavonoids = flavonoids;
            this.IngredientBreakdown = ingredientBreakdown;
            this.Properties = properties;
            this.Nutrients = nutrients;
        }

        /// <summary>
        /// Gets or Sets WeightPerServing
        /// </summary>
        [DataMember(Name = "weight_per_serving", EmitDefaultValue = false)]
        public SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing WeightPerServing { get; set; }

        /// <summary>
        /// Gets or Sets CaloricBreakdown
        /// </summary>
        [DataMember(Name = "caloric_breakdown", EmitDefaultValue = false)]
        public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown CaloricBreakdown { get; set; }

        /// <summary>
        /// Gets or Sets Flavonoids
        /// </summary>
        [DataMember(Name = "flavonoids", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> Flavonoids { get; set; }

        /// <summary>
        /// Gets or Sets IngredientBreakdown
        /// </summary>
        [DataMember(Name = "ingredient_breakdown", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> IngredientBreakdown { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [DataMember(Name = "properties", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> Properties { get; set; }

        /// <summary>
        /// Gets or Sets Nutrients
        /// </summary>
        [DataMember(Name = "nutrients", EmitDefaultValue = false)]
        public List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> Nutrients { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchDrinksAPI200ResponseDrinksInnerNutrition {\n");
            sb.Append("  WeightPerServing: ").Append(WeightPerServing).Append("\n");
            sb.Append("  CaloricBreakdown: ").Append(CaloricBreakdown).Append("\n");
            sb.Append("  Flavonoids: ").Append(Flavonoids).Append("\n");
            sb.Append("  IngredientBreakdown: ").Append(IngredientBreakdown).Append("\n");
            sb.Append("  Properties: ").Append(Properties).Append("\n");
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
