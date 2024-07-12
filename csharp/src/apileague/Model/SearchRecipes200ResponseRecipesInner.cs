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
    /// SearchRecipes200ResponseRecipesInner
    /// </summary>
    [DataContract(Name = "searchRecipes_200_response_recipes_inner")]
    public partial class SearchRecipes200ResponseRecipesInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRecipes200ResponseRecipesInner" /> class.
        /// </summary>
        /// <param name="images">images.</param>
        /// <param name="nutrition">nutrition.</param>
        /// <param name="id">id.</param>
        /// <param name="title">title.</param>
        public SearchRecipes200ResponseRecipesInner(List<string> images = default(List<string>), SearchRecipes200ResponseRecipesInnerNutrition nutrition = default(SearchRecipes200ResponseRecipesInnerNutrition), int id = default(int), string title = default(string))
        {
            this.Images = images;
            this.Nutrition = nutrition;
            this.Id = id;
            this.Title = title;
        }

        /// <summary>
        /// Gets or Sets Images
        /// </summary>
        [DataMember(Name = "images", EmitDefaultValue = false)]
        public List<string> Images { get; set; }

        /// <summary>
        /// Gets or Sets Nutrition
        /// </summary>
        [DataMember(Name = "nutrition", EmitDefaultValue = false)]
        public SearchRecipes200ResponseRecipesInnerNutrition Nutrition { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRecipes200ResponseRecipesInner {\n");
            sb.Append("  Images: ").Append(Images).Append("\n");
            sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
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
