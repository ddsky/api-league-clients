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
    /// DetectMainImageColorAPI200ResponseInner
    /// </summary>
    [DataContract(Name = "detectMainImageColorAPI_200_response_inner")]
    public partial class DetectMainImageColorAPI200ResponseInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectMainImageColorAPI200ResponseInner" /> class.
        /// </summary>
        /// <param name="specificColor">specificColor.</param>
        /// <param name="mainColor">mainColor.</param>
        /// <param name="hexCode">hexCode.</param>
        public DetectMainImageColorAPI200ResponseInner(string specificColor = default(string), string mainColor = default(string), string hexCode = default(string))
        {
            this.SpecificColor = specificColor;
            this.MainColor = mainColor;
            this.HexCode = hexCode;
        }

        /// <summary>
        /// Gets or Sets SpecificColor
        /// </summary>
        [DataMember(Name = "specific_color", EmitDefaultValue = true)]
        public string SpecificColor { get; set; }

        /// <summary>
        /// Gets or Sets MainColor
        /// </summary>
        [DataMember(Name = "main_color", EmitDefaultValue = true)]
        public string MainColor { get; set; }

        /// <summary>
        /// Gets or Sets HexCode
        /// </summary>
        [DataMember(Name = "hex_code", EmitDefaultValue = true)]
        public string HexCode { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DetectMainImageColorAPI200ResponseInner {\n");
            sb.Append("  SpecificColor: ").Append(SpecificColor).Append("\n");
            sb.Append("  MainColor: ").Append(MainColor).Append("\n");
            sb.Append("  HexCode: ").Append(HexCode).Append("\n");
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
