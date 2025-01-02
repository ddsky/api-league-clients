/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = apileague.Client.OpenAPIDateConverter;

namespace apileague.Model
{
    /// <summary>
    /// ExtractNewsAPI200Response
    /// </summary>
    [DataContract(Name = "extractNewsAPI_200_response")]
    public partial class ExtractNewsAPI200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtractNewsAPI200Response" /> class.
        /// </summary>
        /// <param name="title">title.</param>
        /// <param name="text">text.</param>
        /// <param name="url">url.</param>
        /// <param name="images">images.</param>
        /// <param name="videos">videos.</param>
        /// <param name="publishDate">publishDate.</param>
        /// <param name="authors">authors.</param>
        /// <param name="language">language.</param>
        public ExtractNewsAPI200Response(string title = default(string), string text = default(string), string url = default(string), List<ExtractNewsAPI200ResponseImagesInner> images = default(List<ExtractNewsAPI200ResponseImagesInner>), List<ExtractNewsAPI200ResponseVideosInner> videos = default(List<ExtractNewsAPI200ResponseVideosInner>), string publishDate = default(string), List<string> authors = default(List<string>), string language = default(string))
        {
            this.Title = title;
            this.Text = text;
            this.Url = url;
            this.Images = images;
            this.Videos = videos;
            this.PublishDate = publishDate;
            this.Authors = authors;
            this.Language = language;
        }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets Text
        /// </summary>
        [DataMember(Name = "text", EmitDefaultValue = true)]
        public string Text { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name = "url", EmitDefaultValue = true)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets Images
        /// </summary>
        [DataMember(Name = "images", EmitDefaultValue = false)]
        public List<ExtractNewsAPI200ResponseImagesInner> Images { get; set; }

        /// <summary>
        /// Gets or Sets Videos
        /// </summary>
        [DataMember(Name = "videos", EmitDefaultValue = false)]
        public List<ExtractNewsAPI200ResponseVideosInner> Videos { get; set; }

        /// <summary>
        /// Gets or Sets PublishDate
        /// </summary>
        [DataMember(Name = "publish_date", EmitDefaultValue = true)]
        public string PublishDate { get; set; }

        /// <summary>
        /// Gets or Sets Authors
        /// </summary>
        [DataMember(Name = "authors", EmitDefaultValue = false)]
        public List<string> Authors { get; set; }

        /// <summary>
        /// Gets or Sets Language
        /// </summary>
        [DataMember(Name = "language", EmitDefaultValue = true)]
        public string Language { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ExtractNewsAPI200Response {\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Text: ").Append(Text).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Images: ").Append(Images).Append("\n");
            sb.Append("  Videos: ").Append(Videos).Append("\n");
            sb.Append("  PublishDate: ").Append(PublishDate).Append("\n");
            sb.Append("  Authors: ").Append(Authors).Append("\n");
            sb.Append("  Language: ").Append(Language).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
