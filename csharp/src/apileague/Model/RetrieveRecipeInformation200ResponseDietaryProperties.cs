/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
    /// RetrieveRecipeInformation200ResponseDietaryProperties
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformation_200_response_dietary_properties")]
    public partial class RetrieveRecipeInformation200ResponseDietaryProperties : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformation200ResponseDietaryProperties" /> class.
        /// </summary>
        /// <param name="lowFodmap">lowFodmap.</param>
        /// <param name="vegetarian">vegetarian.</param>
        /// <param name="vegan">vegan.</param>
        /// <param name="glutenFree">glutenFree.</param>
        /// <param name="dairyFree">dairyFree.</param>
        /// <param name="gaps">gaps.</param>
        /// <param name="diets">diets.</param>
        public RetrieveRecipeInformation200ResponseDietaryProperties(bool lowFodmap = default(bool), bool vegetarian = default(bool), bool vegan = default(bool), bool glutenFree = default(bool), bool dairyFree = default(bool), string gaps = default(string), List<string> diets = default(List<string>))
        {
            this.LowFodmap = lowFodmap;
            this.Vegetarian = vegetarian;
            this.Vegan = vegan;
            this.GlutenFree = glutenFree;
            this.DairyFree = dairyFree;
            this.Gaps = gaps;
            this.Diets = diets;
        }

        /// <summary>
        /// Gets or Sets LowFodmap
        /// </summary>
        [DataMember(Name = "low_fodmap", EmitDefaultValue = true)]
        public bool LowFodmap { get; set; }

        /// <summary>
        /// Gets or Sets Vegetarian
        /// </summary>
        [DataMember(Name = "vegetarian", EmitDefaultValue = true)]
        public bool Vegetarian { get; set; }

        /// <summary>
        /// Gets or Sets Vegan
        /// </summary>
        [DataMember(Name = "vegan", EmitDefaultValue = true)]
        public bool Vegan { get; set; }

        /// <summary>
        /// Gets or Sets GlutenFree
        /// </summary>
        [DataMember(Name = "gluten_free", EmitDefaultValue = true)]
        public bool GlutenFree { get; set; }

        /// <summary>
        /// Gets or Sets DairyFree
        /// </summary>
        [DataMember(Name = "dairy_free", EmitDefaultValue = true)]
        public bool DairyFree { get; set; }

        /// <summary>
        /// Gets or Sets Gaps
        /// </summary>
        [DataMember(Name = "gaps", EmitDefaultValue = true)]
        public string Gaps { get; set; }

        /// <summary>
        /// Gets or Sets Diets
        /// </summary>
        [DataMember(Name = "diets", EmitDefaultValue = false)]
        public List<string> Diets { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformation200ResponseDietaryProperties {\n");
            sb.Append("  LowFodmap: ").Append(LowFodmap).Append("\n");
            sb.Append("  Vegetarian: ").Append(Vegetarian).Append("\n");
            sb.Append("  Vegan: ").Append(Vegan).Append("\n");
            sb.Append("  GlutenFree: ").Append(GlutenFree).Append("\n");
            sb.Append("  DairyFree: ").Append(DairyFree).Append("\n");
            sb.Append("  Gaps: ").Append(Gaps).Append("\n");
            sb.Append("  Diets: ").Append(Diets).Append("\n");
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
