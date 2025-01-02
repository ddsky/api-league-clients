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
    /// ExtractPublishDateAPI200Response
    /// </summary>
    [DataContract(Name = "extractPublishDateAPI_200_response")]
    public partial class ExtractPublishDateAPI200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtractPublishDateAPI200Response" /> class.
        /// </summary>
        /// <param name="publishDate">publishDate.</param>
        public ExtractPublishDateAPI200Response(string publishDate = default(string))
        {
            this.PublishDate = publishDate;
        }

        /// <summary>
        /// Gets or Sets PublishDate
        /// </summary>
        [DataMember(Name = "publish_date", EmitDefaultValue = true)]
        public string PublishDate { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ExtractPublishDateAPI200Response {\n");
            sb.Append("  PublishDate: ").Append(PublishDate).Append("\n");
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
