/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
    /// SearchRoyaltyFreeImages200ResponseImagesInner
    /// </summary>
    [DataContract(Name = "searchRoyaltyFreeImages_200_response_images_inner")]
    public partial class SearchRoyaltyFreeImages200ResponseImagesInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRoyaltyFreeImages200ResponseImagesInner" /> class.
        /// </summary>
        /// <param name="width">width.</param>
        /// <param name="license">license.</param>
        /// <param name="thumbnail">thumbnail.</param>
        /// <param name="id">id.</param>
        /// <param name="url">url.</param>
        /// <param name="height">height.</param>
        public SearchRoyaltyFreeImages200ResponseImagesInner(int width = default(int), SearchRoyaltyFreeImages200ResponseImagesInnerLicense license = default(SearchRoyaltyFreeImages200ResponseImagesInnerLicense), string thumbnail = default(string), string id = default(string), string url = default(string), int height = default(int))
        {
            this.Width = width;
            this.License = license;
            this.Thumbnail = thumbnail;
            this.Id = id;
            this.Url = url;
            this.Height = height;
        }

        /// <summary>
        /// Gets or Sets Width
        /// </summary>
        [DataMember(Name = "width", EmitDefaultValue = false)]
        public int Width { get; set; }

        /// <summary>
        /// Gets or Sets License
        /// </summary>
        [DataMember(Name = "license", EmitDefaultValue = false)]
        public SearchRoyaltyFreeImages200ResponseImagesInnerLicense License { get; set; }

        /// <summary>
        /// Gets or Sets Thumbnail
        /// </summary>
        [DataMember(Name = "thumbnail", EmitDefaultValue = true)]
        public string Thumbnail { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name = "url", EmitDefaultValue = true)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets Height
        /// </summary>
        [DataMember(Name = "height", EmitDefaultValue = false)]
        public int Height { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRoyaltyFreeImages200ResponseImagesInner {\n");
            sb.Append("  Width: ").Append(Width).Append("\n");
            sb.Append("  License: ").Append(License).Append("\n");
            sb.Append("  Thumbnail: ").Append(Thumbnail).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Height: ").Append(Height).Append("\n");
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
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
