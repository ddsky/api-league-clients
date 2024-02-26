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
  public class InlineResponse20020Dates {
    /// <summary>
    /// Gets or Sets StartPosition
    /// </summary>
    [DataMember(Name="start_position", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "start_position")]
    public int? StartPosition { get; set; }

    /// <summary>
    /// Gets or Sets Date
    /// </summary>
    [DataMember(Name="date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "date")]
    public string Date { get; set; }

    /// <summary>
    /// Gets or Sets NormalizedDate
    /// </summary>
    [DataMember(Name="normalized_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "normalized_date")]
    public Null NormalizedDate { get; set; }

    /// <summary>
    /// Gets or Sets Tag
    /// </summary>
    [DataMember(Name="tag", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tag")]
    public string Tag { get; set; }

    /// <summary>
    /// Gets or Sets EndPosition
    /// </summary>
    [DataMember(Name="end_position", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "end_position")]
    public int? EndPosition { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20020Dates {\n");
      sb.Append("  StartPosition: ").Append(StartPosition).Append("\n");
      sb.Append("  Date: ").Append(Date).Append("\n");
      sb.Append("  NormalizedDate: ").Append(NormalizedDate).Append("\n");
      sb.Append("  Tag: ").Append(Tag).Append("\n");
      sb.Append("  EndPosition: ").Append(EndPosition).Append("\n");
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
