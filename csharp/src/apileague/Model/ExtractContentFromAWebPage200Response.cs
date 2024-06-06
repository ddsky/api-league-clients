/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
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
    /// ExtractContentFromAWebPage200Response
    /// </summary>
    [DataContract(Name = "extractContentFromAWebPage_200_response")]
    public partial class ExtractContentFromAWebPage200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtractContentFromAWebPage200Response" /> class.
        /// </summary>
        /// <param name="title">title.</param>
        /// <param name="mainText">mainText.</param>
        /// <param name="mainHtml">mainHtml.</param>
        /// <param name="images">images.</param>
        public ExtractContentFromAWebPage200Response(string title = default(string), string mainText = default(string), string mainHtml = default(string), List<string> images = default(List<string>))
        {
            this.Title = title;
            this.MainText = mainText;
            this.MainHtml = mainHtml;
            this.Images = images;
        }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets MainText
        /// </summary>
        [DataMember(Name = "main_text", EmitDefaultValue = true)]
        public string MainText { get; set; }

        /// <summary>
        /// Gets or Sets MainHtml
        /// </summary>
        [DataMember(Name = "main_html", EmitDefaultValue = true)]
        public string MainHtml { get; set; }

        /// <summary>
        /// Gets or Sets Images
        /// </summary>
        [DataMember(Name = "images", EmitDefaultValue = false)]
        public List<string> Images { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ExtractContentFromAWebPage200Response {\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  MainText: ").Append(MainText).Append("\n");
            sb.Append("  MainHtml: ").Append(MainHtml).Append("\n");
            sb.Append("  Images: ").Append(Images).Append("\n");
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
