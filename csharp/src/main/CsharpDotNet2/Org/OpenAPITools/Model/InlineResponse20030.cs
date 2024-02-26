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
  public class InlineResponse20030 {
    /// <summary>
    /// Gets or Sets TargetAmount
    /// </summary>
    [DataMember(Name="target_amount", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "target_amount")]
    public decimal? TargetAmount { get; set; }

    /// <summary>
    /// Gets or Sets TargetUnit
    /// </summary>
    [DataMember(Name="target_unit", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "target_unit")]
    public string TargetUnit { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20030 {\n");
      sb.Append("  TargetAmount: ").Append(TargetAmount).Append("\n");
      sb.Append("  TargetUnit: ").Append(TargetUnit).Append("\n");
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
