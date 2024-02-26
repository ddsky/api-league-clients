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
  public class InlineResponse20019 {
    /// <summary>
    /// Gets or Sets NumberOfWords
    /// </summary>
    [DataMember(Name="number_of_words", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "number_of_words")]
    public int? NumberOfWords { get; set; }

    /// <summary>
    /// Gets or Sets NumberOfSentences
    /// </summary>
    [DataMember(Name="number_of_sentences", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "number_of_sentences")]
    public int? NumberOfSentences { get; set; }

    /// <summary>
    /// Gets or Sets Readability
    /// </summary>
    [DataMember(Name="readability", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "readability")]
    public InlineResponse20019Readability Readability { get; set; }

    /// <summary>
    /// Gets or Sets Skimmability
    /// </summary>
    [DataMember(Name="skimmability", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "skimmability")]
    public InlineResponse20019Skimmability Skimmability { get; set; }

    /// <summary>
    /// Gets or Sets Interestingness
    /// </summary>
    [DataMember(Name="interestingness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "interestingness")]
    public InlineResponse20019Interestingness Interestingness { get; set; }

    /// <summary>
    /// Gets or Sets Style
    /// </summary>
    [DataMember(Name="style", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "style")]
    public InlineResponse20019Style Style { get; set; }

    /// <summary>
    /// Gets or Sets TotalScore
    /// </summary>
    [DataMember(Name="total_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "total_score")]
    public decimal? TotalScore { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019 {\n");
      sb.Append("  NumberOfWords: ").Append(NumberOfWords).Append("\n");
      sb.Append("  NumberOfSentences: ").Append(NumberOfSentences).Append("\n");
      sb.Append("  Readability: ").Append(Readability).Append("\n");
      sb.Append("  Skimmability: ").Append(Skimmability).Append("\n");
      sb.Append("  Interestingness: ").Append(Interestingness).Append("\n");
      sb.Append("  Style: ").Append(Style).Append("\n");
      sb.Append("  TotalScore: ").Append(TotalScore).Append("\n");
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
