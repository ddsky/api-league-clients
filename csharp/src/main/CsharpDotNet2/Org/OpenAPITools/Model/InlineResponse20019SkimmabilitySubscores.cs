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
  public class InlineResponse20019SkimmabilitySubscores {
    /// <summary>
    /// Gets or Sets BulletPointRatioScore
    /// </summary>
    [DataMember(Name="bullet_point_ratio_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "bullet_point_ratio_score")]
    public List<int?> BulletPointRatioScore { get; set; }

    /// <summary>
    /// Gets or Sets ImageScore
    /// </summary>
    [DataMember(Name="image_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image_score")]
    public List<int?> ImageScore { get; set; }

    /// <summary>
    /// Gets or Sets HighlightedWordRatioScore
    /// </summary>
    [DataMember(Name="highlighted_word_ratio_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "highlighted_word_ratio_score")]
    public List<int?> HighlightedWordRatioScore { get; set; }

    /// <summary>
    /// Gets or Sets VideoScore
    /// </summary>
    [DataMember(Name="video_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "video_score")]
    public List<int?> VideoScore { get; set; }

    /// <summary>
    /// Gets or Sets ParagraphScore
    /// </summary>
    [DataMember(Name="paragraph_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "paragraph_score")]
    public List<int?> ParagraphScore { get; set; }

    /// <summary>
    /// Gets or Sets ParagraphHeadlineRatioScore
    /// </summary>
    [DataMember(Name="paragraph_headline_ratio_score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "paragraph_headline_ratio_score")]
    public List<int?> ParagraphHeadlineRatioScore { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20019SkimmabilitySubscores {\n");
      sb.Append("  BulletPointRatioScore: ").Append(BulletPointRatioScore).Append("\n");
      sb.Append("  ImageScore: ").Append(ImageScore).Append("\n");
      sb.Append("  HighlightedWordRatioScore: ").Append(HighlightedWordRatioScore).Append("\n");
      sb.Append("  VideoScore: ").Append(VideoScore).Append("\n");
      sb.Append("  ParagraphScore: ").Append(ParagraphScore).Append("\n");
      sb.Append("  ParagraphHeadlineRatioScore: ").Append(ParagraphHeadlineRatioScore).Append("\n");
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
