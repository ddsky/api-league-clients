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
    /// SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
    /// </summary>
    [DataContract(Name = "searchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner")]
    public partial class SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner" /> class.
        /// </summary>
        /// <param name="name">name.</param>
        /// <param name="image">image.</param>
        /// <param name="id">id.</param>
        public SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(string name = default(string), string image = default(string), int id = default(int))
        {
            this.Name = name;
            this.Image = image;
            this.Id = id;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
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
