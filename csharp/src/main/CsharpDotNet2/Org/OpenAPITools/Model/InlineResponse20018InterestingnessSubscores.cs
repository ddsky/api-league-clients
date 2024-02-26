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
  public class InlineResponse20018InterestingnessSubscores {
    /// <summary>
    /// Gets or Sets TitleRatingScore
    /// </summary>
    [DataMember(Name="title_rating_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title_rating_score")]
    public List<int?> TitleRatingScore { get; set; }

    /// <summary>
    /// Gets or Sets QuoteScore
    /// </summary>
    [DataMember(Name="quote_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "quote_score")]
    public List<int?> QuoteScore { get; set; }

    /// <summary>
    /// Gets or Sets LengthScore
    /// </summary>
    [DataMember(Name="length_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "length_score")]
    public List<int?> LengthScore { get; set; }

    /// <summary>
    /// Gets or Sets LinkScore
    /// </summary>
    [DataMember(Name="link_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "link_score")]
    public List<int?> LinkScore { get; set; }

    /// <summary>
    /// Gets or Sets GoogleHitsScore
    /// </summary>
    [DataMember(Name="google_hits_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "google_hits_score")]
    public List<int?> GoogleHitsScore { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20018InterestingnessSubscores {\n");
      sb.Append("  TitleRatingScore: ").Append(TitleRatingScore).Append("\n");
      sb.Append("  QuoteScore: ").Append(QuoteScore).Append("\n");
      sb.Append("  LengthScore: ").Append(LengthScore).Append("\n");
      sb.Append("  LinkScore: ").Append(LinkScore).Append("\n");
      sb.Append("  GoogleHitsScore: ").Append(GoogleHitsScore).Append("\n");
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
