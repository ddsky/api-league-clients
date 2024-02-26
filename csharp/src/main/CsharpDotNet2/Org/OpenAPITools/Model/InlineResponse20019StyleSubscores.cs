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
  public class InlineResponse20019StyleSubscores {
    /// <summary>
    /// Gets or Sets AbbreviationScore
    /// </summary>
    [DataMember(Name="abbreviation_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "abbreviation_score")]
    public List<int?> AbbreviationScore { get; set; }

    /// <summary>
    /// Gets or Sets StyleScore
    /// </summary>
    [DataMember(Name="style_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "style_score")]
    public List<int?> StyleScore { get; set; }

    /// <summary>
    /// Gets or Sets SpellingScore
    /// </summary>
    [DataMember(Name="spelling_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spelling_score")]
    public List<int?> SpellingScore { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019StyleSubscores {\n");
      sb.Append("  AbbreviationScore: ").Append(AbbreviationScore).Append("\n");
      sb.Append("  StyleScore: ").Append(StyleScore).Append("\n");
      sb.Append("  SpellingScore: ").Append(SpellingScore).Append("\n");
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
