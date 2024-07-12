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
    /// TopNews200Response
    /// </summary>
    [DataContract(Name = "topNews_200_response")]
    public partial class TopNews200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TopNews200Response" /> class.
        /// </summary>
        /// <param name="topNews">topNews.</param>
        /// <param name="language">language.</param>
        /// <param name="country">country.</param>
        public TopNews200Response(List<TopNews200ResponseTopNewsInner> topNews = default(List<TopNews200ResponseTopNewsInner>), string language = default(string), string country = default(string))
        {
            this.TopNews = topNews;
            this.Language = language;
            this.Country = country;
        }

        /// <summary>
        /// Gets or Sets TopNews
        /// </summary>
        [DataMember(Name = "top_news", EmitDefaultValue = false)]
        public List<TopNews200ResponseTopNewsInner> TopNews { get; set; }

        /// <summary>
        /// Gets or Sets Language
        /// </summary>
        [DataMember(Name = "language", EmitDefaultValue = true)]
        public string Language { get; set; }

        /// <summary>
        /// Gets or Sets Country
        /// </summary>
        [DataMember(Name = "country", EmitDefaultValue = true)]
        public string Country { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class TopNews200Response {\n");
            sb.Append("  TopNews: ").Append(TopNews).Append("\n");
            sb.Append("  Language: ").Append(Language).Append("\n");
            sb.Append("  Country: ").Append(Country).Append("\n");
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
