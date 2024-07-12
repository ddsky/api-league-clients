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
    /// RetrieveRecipeInformation200Response
    /// </summary>
    [DataContract(Name = "retrieveRecipeInformation_200_response")]
    public partial class RetrieveRecipeInformation200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveRecipeInformation200Response" /> class.
        /// </summary>
        /// <param name="id">id.</param>
        /// <param name="title">title.</param>
        /// <param name="servings">servings.</param>
        /// <param name="images">images.</param>
        /// <param name="dietaryProperties">dietaryProperties.</param>
        /// <param name="pricePerServing">pricePerServing.</param>
        /// <param name="times">times.</param>
        /// <param name="nutrition">nutrition.</param>
        /// <param name="taste">taste.</param>
        /// <param name="cuisines">cuisines.</param>
        /// <param name="mealTypes">mealTypes.</param>
        /// <param name="occasions">occasions.</param>
        /// <param name="ingredients">ingredients.</param>
        /// <param name="instructions">instructions.</param>
        /// <param name="credits">credits.</param>
        /// <param name="scores">scores.</param>
        public RetrieveRecipeInformation200Response(int id = default(int), string title = default(string), int servings = default(int), List<string> images = default(List<string>), RetrieveRecipeInformation200ResponseDietaryProperties dietaryProperties = default(RetrieveRecipeInformation200ResponseDietaryProperties), decimal pricePerServing = default(decimal), RetrieveRecipeInformation200ResponseTimes times = default(RetrieveRecipeInformation200ResponseTimes), RetrieveRecipeInformation200ResponseNutrition nutrition = default(RetrieveRecipeInformation200ResponseNutrition), RetrieveRecipeInformation200ResponseTaste taste = default(RetrieveRecipeInformation200ResponseTaste), List<string> cuisines = default(List<string>), List<string> mealTypes = default(List<string>), List<string> occasions = default(List<string>), List<RetrieveRecipeInformation200ResponseIngredientsInner> ingredients = default(List<RetrieveRecipeInformation200ResponseIngredientsInner>), List<RetrieveRecipeInformation200ResponseInstructionsInner> instructions = default(List<RetrieveRecipeInformation200ResponseInstructionsInner>), RetrieveRecipeInformation200ResponseCredits credits = default(RetrieveRecipeInformation200ResponseCredits), RetrieveRecipeInformation200ResponseScores scores = default(RetrieveRecipeInformation200ResponseScores))
        {
            this.Id = id;
            this.Title = title;
            this.Servings = servings;
            this.Images = images;
            this.DietaryProperties = dietaryProperties;
            this.PricePerServing = pricePerServing;
            this.Times = times;
            this.Nutrition = nutrition;
            this.Taste = taste;
            this.Cuisines = cuisines;
            this.MealTypes = mealTypes;
            this.Occasions = occasions;
            this.Ingredients = ingredients;
            this.Instructions = instructions;
            this.Credits = credits;
            this.Scores = scores;
        }

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
        /// Gets or Sets Servings
        /// </summary>
        [DataMember(Name = "servings", EmitDefaultValue = false)]
        public int Servings { get; set; }

        /// <summary>
        /// Gets or Sets Images
        /// </summary>
        [DataMember(Name = "images", EmitDefaultValue = false)]
        public List<string> Images { get; set; }

        /// <summary>
        /// Gets or Sets DietaryProperties
        /// </summary>
        [DataMember(Name = "dietary_properties", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseDietaryProperties DietaryProperties { get; set; }

        /// <summary>
        /// Gets or Sets PricePerServing
        /// </summary>
        [DataMember(Name = "price_per_serving", EmitDefaultValue = false)]
        public decimal PricePerServing { get; set; }

        /// <summary>
        /// Gets or Sets Times
        /// </summary>
        [DataMember(Name = "times", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseTimes Times { get; set; }

        /// <summary>
        /// Gets or Sets Nutrition
        /// </summary>
        [DataMember(Name = "nutrition", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseNutrition Nutrition { get; set; }

        /// <summary>
        /// Gets or Sets Taste
        /// </summary>
        [DataMember(Name = "taste", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseTaste Taste { get; set; }

        /// <summary>
        /// Gets or Sets Cuisines
        /// </summary>
        [DataMember(Name = "cuisines", EmitDefaultValue = false)]
        public List<string> Cuisines { get; set; }

        /// <summary>
        /// Gets or Sets MealTypes
        /// </summary>
        [DataMember(Name = "meal_types", EmitDefaultValue = false)]
        public List<string> MealTypes { get; set; }

        /// <summary>
        /// Gets or Sets Occasions
        /// </summary>
        [DataMember(Name = "occasions", EmitDefaultValue = false)]
        public List<string> Occasions { get; set; }

        /// <summary>
        /// Gets or Sets Ingredients
        /// </summary>
        [DataMember(Name = "ingredients", EmitDefaultValue = false)]
        public List<RetrieveRecipeInformation200ResponseIngredientsInner> Ingredients { get; set; }

        /// <summary>
        /// Gets or Sets Instructions
        /// </summary>
        [DataMember(Name = "instructions", EmitDefaultValue = false)]
        public List<RetrieveRecipeInformation200ResponseInstructionsInner> Instructions { get; set; }

        /// <summary>
        /// Gets or Sets Credits
        /// </summary>
        [DataMember(Name = "credits", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseCredits Credits { get; set; }

        /// <summary>
        /// Gets or Sets Scores
        /// </summary>
        [DataMember(Name = "scores", EmitDefaultValue = false)]
        public RetrieveRecipeInformation200ResponseScores Scores { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveRecipeInformation200Response {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Servings: ").Append(Servings).Append("\n");
            sb.Append("  Images: ").Append(Images).Append("\n");
            sb.Append("  DietaryProperties: ").Append(DietaryProperties).Append("\n");
            sb.Append("  PricePerServing: ").Append(PricePerServing).Append("\n");
            sb.Append("  Times: ").Append(Times).Append("\n");
            sb.Append("  Nutrition: ").Append(Nutrition).Append("\n");
            sb.Append("  Taste: ").Append(Taste).Append("\n");
            sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
            sb.Append("  MealTypes: ").Append(MealTypes).Append("\n");
            sb.Append("  Occasions: ").Append(Occasions).Append("\n");
            sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
            sb.Append("  Instructions: ").Append(Instructions).Append("\n");
            sb.Append("  Credits: ").Append(Credits).Append("\n");
            sb.Append("  Scores: ").Append(Scores).Append("\n");
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
