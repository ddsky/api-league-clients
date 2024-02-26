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
  public class InlineResponse20029 {
    /// <summary>
    /// Gets or Sets SpecificColor
    /// </summary>
    [DataMember(Name="specific_color", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "specific_color")]
    public string SpecificColor { get; set; }

    /// <summary>
    /// Gets or Sets MainColor
    /// </summary>
    [DataMember(Name="main_color", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "main_color")]
    public string MainColor { get; set; }

    /// <summary>
    /// Gets or Sets HexCode
    /// </summary>
    [DataMember(Name="hex_code", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "hex_code")]
    public string HexCode { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20029 {\n");
      sb.Append("  SpecificColor: ").Append(SpecificColor).Append("\n");
      sb.Append("  MainColor: ").Append(MainColor).Append("\n");
      sb.Append("  HexCode: ").Append(HexCode).Append("\n");
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
