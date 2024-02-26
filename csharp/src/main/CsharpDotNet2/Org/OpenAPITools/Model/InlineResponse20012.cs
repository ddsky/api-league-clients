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
  public class InlineResponse20012 {
    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets MainText
    /// </summary>
    [DataMember(Name="main_text", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "main_text")]
    public string MainText { get; set; }

    /// <summary>
    /// Gets or Sets MainHtml
    /// </summary>
    [DataMember(Name="main_html", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "main_html")]
    public string MainHtml { get; set; }

    /// <summary>
    /// Gets or Sets Images
    /// </summary>
    [DataMember(Name="images", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "images")]
    public List<string> Images { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20012 {\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  MainText: ").Append(MainText).Append("\n");
      sb.Append("  MainHtml: ").Append(MainHtml).Append("\n");
      sb.Append("  Images: ").Append(Images).Append("\n");
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
