// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { ConvertUnitsAPI200Response } from '../models/ConvertUnitsAPI200Response';

/**
 * no description
 */
export class MathApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units API
     * @param sourceAmount The source amount.
     * @param sourceUnit The source unit.
     * @param targetUnit The unit to which should be converted.
     * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
     */
    public async convertUnitsAPI(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'sourceAmount' is not null or undefined
        if (sourceAmount === null || sourceAmount === undefined) {
            throw new RequiredError("MathApi", "convertUnitsAPI", "sourceAmount");
        }


        // verify required parameter 'sourceUnit' is not null or undefined
        if (sourceUnit === null || sourceUnit === undefined) {
            throw new RequiredError("MathApi", "convertUnitsAPI", "sourceUnit");
        }


        // verify required parameter 'targetUnit' is not null or undefined
        if (targetUnit === null || targetUnit === undefined) {
            throw new RequiredError("MathApi", "convertUnitsAPI", "targetUnit");
        }



        // Path Params
        const localVarPath = '/convert-units';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (sourceAmount !== undefined) {
            requestContext.setQueryParam("source-amount", ObjectSerializer.serialize(sourceAmount, "number", "double"));
        }

        // Query Params
        if (sourceUnit !== undefined) {
            requestContext.setQueryParam("source-unit", ObjectSerializer.serialize(sourceUnit, "string", ""));
        }

        // Query Params
        if (targetUnit !== undefined) {
            requestContext.setQueryParam("target-unit", ObjectSerializer.serialize(targetUnit, "string", ""));
        }

        // Query Params
        if (foodName !== undefined) {
            requestContext.setQueryParam("food-name", ObjectSerializer.serialize(foodName, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class MathApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to convertUnitsAPI
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async convertUnitsAPIWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ConvertUnitsAPI200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ConvertUnitsAPI200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConvertUnitsAPI200Response", ""
            ) as ConvertUnitsAPI200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ConvertUnitsAPI200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ConvertUnitsAPI200Response", ""
            ) as ConvertUnitsAPI200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
