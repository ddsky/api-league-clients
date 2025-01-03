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
    /// SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
    /// </summary>
    [DataContract(Name = "searchDrinksAPI_200_response_drinks_inner_ingredients_inner")]
    public partial class SearchDrinksAPI200ResponseDrinksInnerIngredientsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchDrinksAPI200ResponseDrinksInnerIngredientsInner" /> class.
        /// </summary>
        /// <param name="image">image.</param>
        /// <param name="nameClean">nameClean.</param>
        /// <param name="amount">amount.</param>
        /// <param name="unit">unit.</param>
        /// <param name="measures">measures.</param>
        /// <param name="original">original.</param>
        /// <param name="meta">meta.</param>
        /// <param name="originalName">originalName.</param>
        /// <param name="name">name.</param>
        /// <param name="id">id.</param>
        /// <param name="aisle">aisle.</param>
        /// <param name="consistency">consistency.</param>
        public SearchDrinksAPI200ResponseDrinksInnerIngredientsInner(string image = default(string), string nameClean = default(string), int amount = default(int), string unit = default(string), SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures measures = default(SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures), string original = default(string), List<string> meta = default(List<string>), string originalName = default(string), string name = default(string), int id = default(int), string aisle = default(string), string consistency = default(string))
        {
            this.Image = image;
            this.NameClean = nameClean;
            this.Amount = amount;
            this.Unit = unit;
            this.Measures = measures;
            this.Original = original;
            this.Meta = meta;
            this.OriginalName = originalName;
            this.Name = name;
            this.Id = id;
            this.Aisle = aisle;
            this.Consistency = consistency;
        }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets NameClean
        /// </summary>
        [DataMember(Name = "name_clean", EmitDefaultValue = true)]
        public string NameClean { get; set; }

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
        /// Gets or Sets Measures
        /// </summary>
        [DataMember(Name = "measures", EmitDefaultValue = false)]
        public SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures Measures { get; set; }

        /// <summary>
        /// Gets or Sets Original
        /// </summary>
        [DataMember(Name = "original", EmitDefaultValue = true)]
        public string Original { get; set; }

        /// <summary>
        /// Gets or Sets Meta
        /// </summary>
        [DataMember(Name = "meta", EmitDefaultValue = false)]
        public List<string> Meta { get; set; }

        /// <summary>
        /// Gets or Sets OriginalName
        /// </summary>
        [DataMember(Name = "original_name", EmitDefaultValue = true)]
        public string OriginalName { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Aisle
        /// </summary>
        [DataMember(Name = "aisle", EmitDefaultValue = true)]
        public string Aisle { get; set; }

        /// <summary>
        /// Gets or Sets Consistency
        /// </summary>
        [DataMember(Name = "consistency", EmitDefaultValue = true)]
        public string Consistency { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchDrinksAPI200ResponseDrinksInnerIngredientsInner {\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  NameClean: ").Append(NameClean).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
            sb.Append("  Measures: ").Append(Measures).Append("\n");
            sb.Append("  Original: ").Append(Original).Append("\n");
            sb.Append("  Meta: ").Append(Meta).Append("\n");
            sb.Append("  OriginalName: ").Append(OriginalName).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Aisle: ").Append(Aisle).Append("\n");
            sb.Append("  Consistency: ").Append(Consistency).Append("\n");
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
