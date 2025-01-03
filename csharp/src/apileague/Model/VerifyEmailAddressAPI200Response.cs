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
    /// VerifyEmailAddressAPI200Response
    /// </summary>
    [DataContract(Name = "verifyEmailAddressAPI_200_response")]
    public partial class VerifyEmailAddressAPI200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="VerifyEmailAddressAPI200Response" /> class.
        /// </summary>
        /// <param name="email">email.</param>
        /// <param name="domain">domain.</param>
        /// <param name="firstName">firstName.</param>
        /// <param name="middleName">middleName.</param>
        /// <param name="lastName">lastName.</param>
        /// <param name="fullName">fullName.</param>
        /// <param name="username">username.</param>
        /// <param name="image">image.</param>
        /// <param name="result">result.</param>
        /// <param name="disposable">disposable.</param>
        /// <param name="acceptAll">acceptAll.</param>
        /// <param name="freeProvider">freeProvider.</param>
        public VerifyEmailAddressAPI200Response(string email = default(string), string domain = default(string), string firstName = default(string), string middleName = default(string), string lastName = default(string), string fullName = default(string), string username = default(string), string image = default(string), string result = default(string), bool disposable = default(bool), bool acceptAll = default(bool), bool freeProvider = default(bool))
        {
            this.Email = email;
            this.Domain = domain;
            this.FirstName = firstName;
            this.MiddleName = middleName;
            this.LastName = lastName;
            this.FullName = fullName;
            this.Username = username;
            this.Image = image;
            this.Result = result;
            this.Disposable = disposable;
            this.AcceptAll = acceptAll;
            this.FreeProvider = freeProvider;
        }

        /// <summary>
        /// Gets or Sets Email
        /// </summary>
        [DataMember(Name = "email", EmitDefaultValue = true)]
        public string Email { get; set; }

        /// <summary>
        /// Gets or Sets Domain
        /// </summary>
        [DataMember(Name = "domain", EmitDefaultValue = true)]
        public string Domain { get; set; }

        /// <summary>
        /// Gets or Sets FirstName
        /// </summary>
        [DataMember(Name = "first_name", EmitDefaultValue = true)]
        public string FirstName { get; set; }

        /// <summary>
        /// Gets or Sets MiddleName
        /// </summary>
        [DataMember(Name = "middle_name", EmitDefaultValue = true)]
        public string MiddleName { get; set; }

        /// <summary>
        /// Gets or Sets LastName
        /// </summary>
        [DataMember(Name = "last_name", EmitDefaultValue = true)]
        public string LastName { get; set; }

        /// <summary>
        /// Gets or Sets FullName
        /// </summary>
        [DataMember(Name = "full_name", EmitDefaultValue = true)]
        public string FullName { get; set; }

        /// <summary>
        /// Gets or Sets Username
        /// </summary>
        [DataMember(Name = "username", EmitDefaultValue = true)]
        public string Username { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Result
        /// </summary>
        [DataMember(Name = "result", EmitDefaultValue = true)]
        public string Result { get; set; }

        /// <summary>
        /// Gets or Sets Disposable
        /// </summary>
        [DataMember(Name = "disposable", EmitDefaultValue = true)]
        public bool Disposable { get; set; }

        /// <summary>
        /// Gets or Sets AcceptAll
        /// </summary>
        [DataMember(Name = "accept_all", EmitDefaultValue = true)]
        public bool AcceptAll { get; set; }

        /// <summary>
        /// Gets or Sets FreeProvider
        /// </summary>
        [DataMember(Name = "free_provider", EmitDefaultValue = true)]
        public bool FreeProvider { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class VerifyEmailAddressAPI200Response {\n");
            sb.Append("  Email: ").Append(Email).Append("\n");
            sb.Append("  Domain: ").Append(Domain).Append("\n");
            sb.Append("  FirstName: ").Append(FirstName).Append("\n");
            sb.Append("  MiddleName: ").Append(MiddleName).Append("\n");
            sb.Append("  LastName: ").Append(LastName).Append("\n");
            sb.Append("  FullName: ").Append(FullName).Append("\n");
            sb.Append("  Username: ").Append(Username).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Result: ").Append(Result).Append("\n");
            sb.Append("  Disposable: ").Append(Disposable).Append("\n");
            sb.Append("  AcceptAll: ").Append(AcceptAll).Append("\n");
            sb.Append("  FreeProvider: ").Append(FreeProvider).Append("\n");
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
