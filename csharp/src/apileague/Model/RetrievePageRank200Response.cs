/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
    /// RetrievePageRank200Response
    /// </summary>
    [DataContract(Name = "retrievePageRank_200_response")]
    public partial class RetrievePageRank200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrievePageRank200Response" /> class.
        /// </summary>
        /// <param name="pageRank">pageRank.</param>
        /// <param name="position">position.</param>
        /// <param name="percentile">percentile.</param>
        public RetrievePageRank200Response(decimal pageRank = default(decimal), int position = default(int), decimal percentile = default(decimal))
        {
            this.PageRank = pageRank;
            this.Position = position;
            this.Percentile = percentile;
        }

        /// <summary>
        /// Gets or Sets PageRank
        /// </summary>
        [DataMember(Name = "page_rank", EmitDefaultValue = false)]
        public decimal PageRank { get; set; }

        /// <summary>
        /// Gets or Sets Position
        /// </summary>
        [DataMember(Name = "position", EmitDefaultValue = false)]
        public int Position { get; set; }

        /// <summary>
        /// Gets or Sets Percentile
        /// </summary>
        [DataMember(Name = "percentile", EmitDefaultValue = false)]
        public decimal Percentile { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrievePageRank200Response {\n");
            sb.Append("  PageRank: ").Append(PageRank).Append("\n");
            sb.Append("  Position: ").Append(Position).Append("\n");
            sb.Append("  Percentile: ").Append(Percentile).Append("\n");
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
