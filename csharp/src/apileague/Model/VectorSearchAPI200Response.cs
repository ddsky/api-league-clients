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
    /// VectorSearchAPI200Response
    /// </summary>
    [DataContract(Name = "vectorSearchAPI_200_response")]
    public partial class VectorSearchAPI200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="VectorSearchAPI200Response" /> class.
        /// </summary>
        /// <param name="vectors">vectors.</param>
        public VectorSearchAPI200Response(List<VectorSearchAPI200ResponseVectorsInner> vectors = default(List<VectorSearchAPI200ResponseVectorsInner>))
        {
            this.Vectors = vectors;
        }

        /// <summary>
        /// Gets or Sets Vectors
        /// </summary>
        [DataMember(Name = "vectors", EmitDefaultValue = false)]
        public List<VectorSearchAPI200ResponseVectorsInner> Vectors { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class VectorSearchAPI200Response {\n");
            sb.Append("  Vectors: ").Append(Vectors).Append("\n");
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
