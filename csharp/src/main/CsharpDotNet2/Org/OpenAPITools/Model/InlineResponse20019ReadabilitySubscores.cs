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
  public class InlineResponse20019ReadabilitySubscores {
    /// <summary>
    /// Gets or Sets ReadingTimeSeconds
    /// </summary>
    [DataMember(Name="reading_time_seconds", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "reading_time_seconds")]
    public int? ReadingTimeSeconds { get; set; }

    /// <summary>
    /// Gets or Sets Forcast
    /// </summary>
    [DataMember(Name="forcast", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "forcast")]
    public decimal? Forcast { get; set; }

    /// <summary>
    /// Gets or Sets Flesch
    /// </summary>
    [DataMember(Name="flesch", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "flesch")]
    public decimal? Flesch { get; set; }

    /// <summary>
    /// Gets or Sets Smog
    /// </summary>
    [DataMember(Name="smog", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "smog")]
    public decimal? Smog { get; set; }

    /// <summary>
    /// Gets or Sets Ari
    /// </summary>
    [DataMember(Name="ari", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ari")]
    public decimal? Ari { get; set; }

    /// <summary>
    /// Gets or Sets Lix
    /// </summary>
    [DataMember(Name="lix", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lix")]
    public decimal? Lix { get; set; }

    /// <summary>
    /// Gets or Sets ColemanLiau
    /// </summary>
    [DataMember(Name="coleman_liau", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coleman_liau")]
    public decimal? ColemanLiau { get; set; }

    /// <summary>
    /// Gets or Sets Kincaid
    /// </summary>
    [DataMember(Name="kincaid", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "kincaid")]
    public decimal? Kincaid { get; set; }

    /// <summary>
    /// Gets or Sets Fog
    /// </summary>
    [DataMember(Name="fog", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fog")]
    public decimal? Fog { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019ReadabilitySubscores {\n");
      sb.Append("  ReadingTimeSeconds: ").Append(ReadingTimeSeconds).Append("\n");
      sb.Append("  Forcast: ").Append(Forcast).Append("\n");
      sb.Append("  Flesch: ").Append(Flesch).Append("\n");
      sb.Append("  Smog: ").Append(Smog).Append("\n");
      sb.Append("  Ari: ").Append(Ari).Append("\n");
      sb.Append("  Lix: ").Append(Lix).Append("\n");
      sb.Append("  ColemanLiau: ").Append(ColemanLiau).Append("\n");
      sb.Append("  Kincaid: ").Append(Kincaid).Append("\n");
      sb.Append("  Fog: ").Append(Fog).Append("\n");
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
