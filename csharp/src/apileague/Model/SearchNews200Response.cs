/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
    /// SearchNews200Response
    /// </summary>
    [DataContract(Name = "searchNews_200_response")]
    public partial class SearchNews200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchNews200Response" /> class.
        /// </summary>
        /// <param name="offset">offset.</param>
        /// <param name="number">number.</param>
        /// <param name="available">available.</param>
        /// <param name="news">news.</param>
        public SearchNews200Response(int offset = default(int), int number = default(int), int available = default(int), List<SearchNews200ResponseNewsInner> news = default(List<SearchNews200ResponseNewsInner>))
        {
            this.Offset = offset;
            this.Number = number;
            this.Available = available;
            this.News = news;
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
        /// Gets or Sets Available
        /// </summary>
        [DataMember(Name = "available", EmitDefaultValue = false)]
        public int Available { get; set; }

        /// <summary>
        /// Gets or Sets News
        /// </summary>
        [DataMember(Name = "news", EmitDefaultValue = false)]
        public List<SearchNews200ResponseNewsInner> News { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchNews200Response {\n");
            sb.Append("  Offset: ").Append(Offset).Append("\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  Available: ").Append(Available).Append("\n");
            sb.Append("  News: ").Append(News).Append("\n");
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
