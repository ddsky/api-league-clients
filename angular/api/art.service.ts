/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent, HttpParameterCodec, HttpContext 
        }       from '@angular/common/http';
import { CustomHttpParameterCodec }                          from '../encoder';
import { Observable }                                        from 'rxjs';

// @ts-ignore
import { RandomPoem200Response } from '../model/randomPoem200Response';

// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';



@Injectable({
  providedIn: 'root'
})
export class ArtService {

    protected basePath = 'https://api.apileague.com';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();
    public encoder: HttpParameterCodec;

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string|string[], @Optional() configuration: Configuration) {
        if (configuration) {
            this.configuration = configuration;
        }
        if (typeof this.configuration.basePath !== 'string') {
            if (Array.isArray(basePath) && basePath.length > 0) {
                basePath = basePath[0];
            }

            if (typeof basePath !== 'string') {
                basePath = this.basePath;
            }
            this.configuration.basePath = basePath;
        }
        this.encoder = this.configuration.encoder || new CustomHttpParameterCodec();
    }


    // @ts-ignore
    private addToHttpParams(httpParams: HttpParams, value: any, key?: string): HttpParams {
        if (typeof value === "object" && value instanceof Date === false) {
            httpParams = this.addToHttpParamsRecursive(httpParams, value);
        } else {
            httpParams = this.addToHttpParamsRecursive(httpParams, value, key);
        }
        return httpParams;
    }

    private addToHttpParamsRecursive(httpParams: HttpParams, value?: any, key?: string): HttpParams {
        if (value == null) {
            return httpParams;
        }

        if (typeof value === "object") {
            if (Array.isArray(value)) {
                (value as any[]).forEach( elem => httpParams = this.addToHttpParamsRecursive(httpParams, elem, key));
            } else if (value instanceof Date) {
                if (key != null) {
                    httpParams = httpParams.append(key, (value as Date).toISOString().substring(0, 10));
                } else {
                   throw Error("key may not be null if value is Date");
                }
            } else {
                Object.keys(value).forEach( k => httpParams = this.addToHttpParamsRecursive(
                    httpParams, value[k], key != null ? `${key}.${k}` : k));
            }
        } else if (key != null) {
            httpParams = httpParams.append(key, value);
        } else {
            throw Error("key may not be null if value is not object or array");
        }
        return httpParams;
    }

    /**
     * Image to Ascii Art by URL
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500).
     * @param height The maximum height of the image (default 400, max. 500).
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'text/plain', context?: HttpContext, transferCache?: boolean}): Observable<string>;
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'text/plain', context?: HttpContext, transferCache?: boolean}): Observable<HttpResponse<string>>;
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'text/plain', context?: HttpContext, transferCache?: boolean}): Observable<HttpEvent<string>>;
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'text/plain', context?: HttpContext, transferCache?: boolean}): Observable<any> {
        if (url === null || url === undefined) {
            throw new Error('Required parameter url was null or undefined when calling imageToAsciiArtByURL.');
        }

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (url !== undefined && url !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>url, 'url');
        }
        if (width !== undefined && width !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>width, 'width');
        }
        if (height !== undefined && height !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>height, 'height');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKey) required
        localVarCredential = this.configuration.lookupCredential('apiKey');
        if (localVarCredential) {
            localVarQueryParameters = localVarQueryParameters.set('api-key', localVarCredential);
        }

        // authentication (headerApiKey) required
        localVarCredential = this.configuration.lookupCredential('headerApiKey');
        if (localVarCredential) {
            localVarHeaders = localVarHeaders.set('x-api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'text/plain'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }

        let localVarTransferCache: boolean | undefined = options && options.transferCache;
        if (localVarTransferCache === undefined) {
            localVarTransferCache = true;
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        let localVarPath = `/convert-image-to-ascii-txt`;
        return this.httpClient.request<string>('get', `${this.configuration.basePath}${localVarPath}`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                transferCache: localVarTransferCache,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Random Poem
     * Retrieve a random poem by many famous authors. You can filter poem\&#39;s by length (number of lines).
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public randomPoem(minLines?: number, maxLines?: number, observe?: 'body', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<RandomPoem200Response>;
    public randomPoem(minLines?: number, maxLines?: number, observe?: 'response', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpResponse<RandomPoem200Response>>;
    public randomPoem(minLines?: number, maxLines?: number, observe?: 'events', reportProgress?: boolean, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<HttpEvent<RandomPoem200Response>>;
    public randomPoem(minLines?: number, maxLines?: number, observe: any = 'body', reportProgress: boolean = false, options?: {httpHeaderAccept?: 'application/json', context?: HttpContext, transferCache?: boolean}): Observable<any> {

        let localVarQueryParameters = new HttpParams({encoder: this.encoder});
        if (minLines !== undefined && minLines !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>minLines, 'min-lines');
        }
        if (maxLines !== undefined && maxLines !== null) {
          localVarQueryParameters = this.addToHttpParams(localVarQueryParameters,
            <any>maxLines, 'max-lines');
        }

        let localVarHeaders = this.defaultHeaders;

        let localVarCredential: string | undefined;
        // authentication (apiKey) required
        localVarCredential = this.configuration.lookupCredential('apiKey');
        if (localVarCredential) {
            localVarQueryParameters = localVarQueryParameters.set('api-key', localVarCredential);
        }

        // authentication (headerApiKey) required
        localVarCredential = this.configuration.lookupCredential('headerApiKey');
        if (localVarCredential) {
            localVarHeaders = localVarHeaders.set('x-api-key', localVarCredential);
        }

        let localVarHttpHeaderAcceptSelected: string | undefined = options && options.httpHeaderAccept;
        if (localVarHttpHeaderAcceptSelected === undefined) {
            // to determine the Accept header
            const httpHeaderAccepts: string[] = [
                'application/json'
            ];
            localVarHttpHeaderAcceptSelected = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        }
        if (localVarHttpHeaderAcceptSelected !== undefined) {
            localVarHeaders = localVarHeaders.set('Accept', localVarHttpHeaderAcceptSelected);
        }

        let localVarHttpContext: HttpContext | undefined = options && options.context;
        if (localVarHttpContext === undefined) {
            localVarHttpContext = new HttpContext();
        }

        let localVarTransferCache: boolean | undefined = options && options.transferCache;
        if (localVarTransferCache === undefined) {
            localVarTransferCache = true;
        }


        let responseType_: 'text' | 'json' | 'blob' = 'json';
        if (localVarHttpHeaderAcceptSelected) {
            if (localVarHttpHeaderAcceptSelected.startsWith('text')) {
                responseType_ = 'text';
            } else if (this.configuration.isJsonMime(localVarHttpHeaderAcceptSelected)) {
                responseType_ = 'json';
            } else {
                responseType_ = 'blob';
            }
        }

        let localVarPath = `/retrieve-random-poem`;
        return this.httpClient.request<RandomPoem200Response>('get', `${this.configuration.basePath}${localVarPath}`,
            {
                context: localVarHttpContext,
                params: localVarQueryParameters,
                responseType: <any>responseType_,
                withCredentials: this.configuration.withCredentials,
                headers: localVarHeaders,
                observe: observe,
                transferCache: localVarTransferCache,
                reportProgress: reportProgress
            }
        );
    }

}
