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
  public class InlineResponse20019Interestingness {
    /// <summary>
    /// Gets or Sets Mainscores
    /// </summary>
    [DataMember(Name="mainscores", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "mainscores")]
    public InlineResponse20019SkimmabilityMainscores Mainscores { get; set; }

    /// <summary>
    /// Gets or Sets Subscores
    /// </summary>
    [DataMember(Name="subscores", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "subscores")]
    public InlineResponse20019InterestingnessSubscores Subscores { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019Interestingness {\n");
      sb.Append("  Mainscores: ").Append(Mainscores).Append("\n");
      sb.Append("  Subscores: ").Append(Subscores).Append("\n");
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
