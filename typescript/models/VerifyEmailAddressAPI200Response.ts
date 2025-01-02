/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * OpenAPI spec version: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class VerifyEmailAddressAPI200Response {
    'email'?: string | null;
    'domain'?: string | null;
    'firstName'?: string | null;
    'middleName'?: string | null;
    'lastName'?: string | null;
    'fullName'?: string | null;
    'username'?: string | null;
    'image'?: string | null;
    'result'?: string | null;
    'disposable'?: boolean;
    'acceptAll'?: boolean;
    'freeProvider'?: boolean;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "email",
            "baseName": "email",
            "type": "string",
            "format": ""
        },
        {
            "name": "domain",
            "baseName": "domain",
            "type": "string",
            "format": ""
        },
        {
            "name": "firstName",
            "baseName": "first_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "middleName",
            "baseName": "middle_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "lastName",
            "baseName": "last_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "fullName",
            "baseName": "full_name",
            "type": "string",
            "format": ""
        },
        {
            "name": "username",
            "baseName": "username",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "result",
            "baseName": "result",
            "type": "string",
            "format": ""
        },
        {
            "name": "disposable",
            "baseName": "disposable",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "acceptAll",
            "baseName": "accept_all",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "freeProvider",
            "baseName": "free_provider",
            "type": "boolean",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return VerifyEmailAddressAPI200Response.attributeTypeMap;
    }

    public constructor() {
    }
}

