using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse20018Document {
    /// <summary>
    /// Gets or Sets Sentiment
    /// </summary>
    [DataMember(Name="sentiment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sentiment")]
    public string Sentiment { get; set; }

    /// <summary>
    /// Gets or Sets Confidence
    /// </summary>
    [DataMember(Name="confidence", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "confidence")]
    public int? Confidence { get; set; }

    /// <summary>
    /// Gets or Sets AverageConfidence
    /// </summary>
    [DataMember(Name="average_confidence", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "average_confidence")]
    public int? AverageConfidence { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20018Document {\n");
      sb.Append("  Sentiment: ").Append(Sentiment).Append("\n");
      sb.Append("  Confidence: ").Append(Confidence).Append("\n");
      sb.Append("  AverageConfidence: ").Append(AverageConfidence).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
