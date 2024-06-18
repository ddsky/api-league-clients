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
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mime;
using apileague.Client;
using apileague.Model;

namespace apileague.Api
{

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMathApiSync : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Convert Units
        /// </summary>
        /// <remarks>
        /// Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ConvertUnits200Response</returns>
        ConvertUnits200Response ConvertUnits(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0);

        /// <summary>
        /// Convert Units
        /// </summary>
        /// <remarks>
        /// Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of ConvertUnits200Response</returns>
        ApiResponse<ConvertUnits200Response> ConvertUnitsWithHttpInfo(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0);
        #endregion Synchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMathApiAsync : IApiAccessor
    {
        #region Asynchronous Operations
        /// <summary>
        /// Convert Units
        /// </summary>
        /// <remarks>
        /// Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ConvertUnits200Response</returns>
        System.Threading.Tasks.Task<ConvertUnits200Response> ConvertUnitsAsync(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));

        /// <summary>
        /// Convert Units
        /// </summary>
        /// <remarks>
        /// Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </remarks>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (ConvertUnits200Response)</returns>
        System.Threading.Tasks.Task<ApiResponse<ConvertUnits200Response>> ConvertUnitsWithHttpInfoAsync(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken));
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMathApi : IMathApiSync, IMathApiAsync
    {

    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class MathApi : IMathApi
    {
        private apileague.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MathApi() : this((string)null)
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MathApi(string basePath)
        {
            this.Configuration = apileague.Client.Configuration.MergeConfigurations(
                apileague.Client.GlobalConfiguration.Instance,
                new apileague.Client.Configuration { BasePath = basePath }
            );
            this.Client = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public MathApi(apileague.Client.Configuration configuration)
        {
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Configuration = apileague.Client.Configuration.MergeConfigurations(
                apileague.Client.GlobalConfiguration.Instance,
                configuration
            );
            this.Client = new apileague.Client.ApiClient(this.Configuration.BasePath);
            this.AsynchronousClient = new apileague.Client.ApiClient(this.Configuration.BasePath);
            ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MathApi"/> class
        /// using a Configuration object and client instance.
        /// </summary>
        /// <param name="client">The client interface for synchronous API access.</param>
        /// <param name="asyncClient">The client interface for asynchronous API access.</param>
        /// <param name="configuration">The configuration object.</param>
        public MathApi(apileague.Client.ISynchronousClient client, apileague.Client.IAsynchronousClient asyncClient, apileague.Client.IReadableConfiguration configuration)
        {
            if (client == null) throw new ArgumentNullException("client");
            if (asyncClient == null) throw new ArgumentNullException("asyncClient");
            if (configuration == null) throw new ArgumentNullException("configuration");

            this.Client = client;
            this.AsynchronousClient = asyncClient;
            this.Configuration = configuration;
            this.ExceptionFactory = apileague.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// The client for accessing this underlying API asynchronously.
        /// </summary>
        public apileague.Client.IAsynchronousClient AsynchronousClient { get; set; }

        /// <summary>
        /// The client for accessing this underlying API synchronously.
        /// </summary>
        public apileague.Client.ISynchronousClient Client { get; set; }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public string GetBasePath()
        {
            return this.Configuration.BasePath;
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public apileague.Client.IReadableConfiguration Configuration { get; set; }

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public apileague.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ConvertUnits200Response</returns>
        public ConvertUnits200Response ConvertUnits(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0)
        {
            apileague.Client.ApiResponse<ConvertUnits200Response> localVarResponse = ConvertUnitsWithHttpInfo(sourceAmount, sourceUnit, targetUnit, foodName);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <returns>ApiResponse of ConvertUnits200Response</returns>
        public apileague.Client.ApiResponse<ConvertUnits200Response> ConvertUnitsWithHttpInfo(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0)
        {
            // verify the required parameter 'sourceUnit' is set
            if (sourceUnit == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'sourceUnit' when calling MathApi->ConvertUnits");
            }

            // verify the required parameter 'targetUnit' is set
            if (targetUnit == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'targetUnit' when calling MathApi->ConvertUnits");
            }

            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "source-amount", sourceAmount));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "source-unit", sourceUnit));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "target-unit", targetUnit));
            if (foodName != null)
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "food-name", foodName));
            }

            localVarRequestOptions.Operation = "MathApi.ConvertUnits";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = this.Client.Get<ConvertUnits200Response>("/convert-units", localVarRequestOptions, this.Configuration);
            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ConvertUnits", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

        /// <summary>
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ConvertUnits200Response</returns>
        public async System.Threading.Tasks.Task<ConvertUnits200Response> ConvertUnitsAsync(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            apileague.Client.ApiResponse<ConvertUnits200Response> localVarResponse = await ConvertUnitsWithHttpInfoAsync(sourceAmount, sourceUnit, targetUnit, foodName, operationIndex, cancellationToken).ConfigureAwait(false);
            return localVarResponse.Data;
        }

        /// <summary>
        /// Convert Units Convert units from one to another. The API returns the amount and the unit of the target unit.
        /// </summary>
        /// <exception cref="apileague.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="sourceAmount">The source amount.</param>
        /// <param name="sourceUnit">The source unit.</param>
        /// <param name="targetUnit">The unit to which should be converted.</param>
        /// <param name="foodName">An optional food name. For converting foods the food is relevant as they have different densities. (optional)</param>
        /// <param name="operationIndex">Index associated with the operation.</param>
        /// <param name="cancellationToken">Cancellation Token to cancel the request.</param>
        /// <returns>Task of ApiResponse (ConvertUnits200Response)</returns>
        public async System.Threading.Tasks.Task<apileague.Client.ApiResponse<ConvertUnits200Response>> ConvertUnitsWithHttpInfoAsync(double sourceAmount, string sourceUnit, string targetUnit, string? foodName = default(string?), int operationIndex = 0, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            // verify the required parameter 'sourceUnit' is set
            if (sourceUnit == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'sourceUnit' when calling MathApi->ConvertUnits");
            }

            // verify the required parameter 'targetUnit' is set
            if (targetUnit == null)
            {
                throw new apileague.Client.ApiException(400, "Missing required parameter 'targetUnit' when calling MathApi->ConvertUnits");
            }


            apileague.Client.RequestOptions localVarRequestOptions = new apileague.Client.RequestOptions();

            string[] _contentTypes = new string[] {
            };

            // to determine the Accept header
            string[] _accepts = new string[] {
                "application/json"
            };

            var localVarContentType = apileague.Client.ClientUtils.SelectHeaderContentType(_contentTypes);
            if (localVarContentType != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Content-Type", localVarContentType);
            }

            var localVarAccept = apileague.Client.ClientUtils.SelectHeaderAccept(_accepts);
            if (localVarAccept != null)
            {
                localVarRequestOptions.HeaderParameters.Add("Accept", localVarAccept);
            }

            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "source-amount", sourceAmount));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "source-unit", sourceUnit));
            localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "target-unit", targetUnit));
            if (foodName != null)
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "food-name", foodName));
            }

            localVarRequestOptions.Operation = "MathApi.ConvertUnits";
            localVarRequestOptions.OperationIndex = operationIndex;

            // authentication (apiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("api-key")))
            {
                localVarRequestOptions.QueryParameters.Add(apileague.Client.ClientUtils.ParameterToMultiMap("", "api-key", this.Configuration.GetApiKeyWithPrefix("api-key")));
            }
            // authentication (headerApiKey) required
            if (!string.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("x-api-key")))
            {
                localVarRequestOptions.HeaderParameters.Add("x-api-key", this.Configuration.GetApiKeyWithPrefix("x-api-key"));
            }

            // make the HTTP request
            var localVarResponse = await this.AsynchronousClient.GetAsync<ConvertUnits200Response>("/convert-units", localVarRequestOptions, this.Configuration, cancellationToken).ConfigureAwait(false);

            if (this.ExceptionFactory != null)
            {
                Exception _exception = this.ExceptionFactory("ConvertUnits", localVarResponse);
                if (_exception != null)
                {
                    throw _exception;
                }
            }

            return localVarResponse;
        }

    }
}
