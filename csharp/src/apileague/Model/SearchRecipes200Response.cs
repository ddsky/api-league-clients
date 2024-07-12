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
    /// SearchRecipes200Response
    /// </summary>
    [DataContract(Name = "searchRecipes_200_response")]
    public partial class SearchRecipes200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRecipes200Response" /> class.
        /// </summary>
        /// <param name="offset">offset.</param>
        /// <param name="number">number.</param>
        /// <param name="recipes">recipes.</param>
        /// <param name="totalResults">totalResults.</param>
        public SearchRecipes200Response(int offset = default(int), int number = default(int), List<SearchRecipes200ResponseRecipesInner> recipes = default(List<SearchRecipes200ResponseRecipesInner>), int totalResults = default(int))
        {
            this.Offset = offset;
            this.Number = number;
            this.Recipes = recipes;
            this.TotalResults = totalResults;
        }

        /// <summary>
        /// Gets or Sets Offset
        /// </summary>
        [DataMember(Name = "offset", EmitDefaultValue = false)]
        public int Offset { get; set; }

        /// <summary>
        /// Gets or Sets Number
        /// </summary>
        [DataMember(Name = "number", EmitDefaultValue = false)]
        public int Number { get; set; }

        /// <summary>
        /// Gets or Sets Recipes
        /// </summary>
        [DataMember(Name = "recipes", EmitDefaultValue = false)]
        public List<SearchRecipes200ResponseRecipesInner> Recipes { get; set; }

        /// <summary>
        /// Gets or Sets TotalResults
        /// </summary>
        [DataMember(Name = "total_results", EmitDefaultValue = false)]
        public int TotalResults { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRecipes200Response {\n");
            sb.Append("  Offset: ").Append(Offset).Append("\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  Recipes: ").Append(Recipes).Append("\n");
            sb.Append("  TotalResults: ").Append(TotalResults).Append("\n");
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
