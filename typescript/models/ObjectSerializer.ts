export * from './InlineResponse200';
export * from './InlineResponse2001';
export * from './InlineResponse20010';
export * from './InlineResponse20011';
export * from './InlineResponse20012';
export * from './InlineResponse20013';
export * from './InlineResponse20014';
export * from './InlineResponse20014Authors';
export * from './InlineResponse20015';
export * from './InlineResponse20015Results';
export * from './InlineResponse20016';
export * from './InlineResponse20017';
export * from './InlineResponse20018';
export * from './InlineResponse20018Document';
export * from './InlineResponse20018Sentences';
export * from './InlineResponse20019';
export * from './InlineResponse20019Interestingness';
export * from './InlineResponse20019InterestingnessSubscores';
export * from './InlineResponse20019Readability';
export * from './InlineResponse20019ReadabilityMainscores';
export * from './InlineResponse20019ReadabilitySubscores';
export * from './InlineResponse20019Skimmability';
export * from './InlineResponse20019SkimmabilityMainscores';
export * from './InlineResponse20019SkimmabilitySubscores';
export * from './InlineResponse20019Style';
export * from './InlineResponse20019StyleSubscores';
export * from './InlineResponse2002';
export * from './InlineResponse20020';
export * from './InlineResponse20021';
export * from './InlineResponse20021Dates';
export * from './InlineResponse20022';
export * from './InlineResponse20023';
export * from './InlineResponse20024';
export * from './InlineResponse20025';
export * from './InlineResponse20026';
export * from './InlineResponse20027';
export * from './InlineResponse20027Entities';
export * from './InlineResponse20028';
export * from './InlineResponse20028Images';
export * from './InlineResponse20028License';
export * from './InlineResponse20029';
export * from './InlineResponse2002News';
export * from './InlineResponse2003';
export * from './InlineResponse20030';
export * from './InlineResponse20031';
export * from './InlineResponse20032';
export * from './InlineResponse2004';
export * from './InlineResponse2004Jokes';
export * from './InlineResponse2005';
export * from './InlineResponse2005Memes';
export * from './InlineResponse2006';
export * from './InlineResponse2007';
export * from './InlineResponse2007Images';
export * from './InlineResponse2008';
export * from './InlineResponse2009';
export * from './InlineResponse200Books';

import { InlineResponse200 } from './InlineResponse200';
import { InlineResponse2001 } from './InlineResponse2001';
import { InlineResponse20010 } from './InlineResponse20010';
import { InlineResponse20011 } from './InlineResponse20011';
import { InlineResponse20012 } from './InlineResponse20012';
import { InlineResponse20013 } from './InlineResponse20013';
import { InlineResponse20014 } from './InlineResponse20014';
import { InlineResponse20014Authors } from './InlineResponse20014Authors';
import { InlineResponse20015 } from './InlineResponse20015';
import { InlineResponse20015Results } from './InlineResponse20015Results';
import { InlineResponse20016 } from './InlineResponse20016';
import { InlineResponse20017 } from './InlineResponse20017';
import { InlineResponse20018 } from './InlineResponse20018';
import { InlineResponse20018Document } from './InlineResponse20018Document';
import { InlineResponse20018Sentences } from './InlineResponse20018Sentences';
import { InlineResponse20019 } from './InlineResponse20019';
import { InlineResponse20019Interestingness } from './InlineResponse20019Interestingness';
import { InlineResponse20019InterestingnessSubscores } from './InlineResponse20019InterestingnessSubscores';
import { InlineResponse20019Readability } from './InlineResponse20019Readability';
import { InlineResponse20019ReadabilityMainscores } from './InlineResponse20019ReadabilityMainscores';
import { InlineResponse20019ReadabilitySubscores } from './InlineResponse20019ReadabilitySubscores';
import { InlineResponse20019Skimmability } from './InlineResponse20019Skimmability';
import { InlineResponse20019SkimmabilityMainscores } from './InlineResponse20019SkimmabilityMainscores';
import { InlineResponse20019SkimmabilitySubscores } from './InlineResponse20019SkimmabilitySubscores';
import { InlineResponse20019Style } from './InlineResponse20019Style';
import { InlineResponse20019StyleSubscores } from './InlineResponse20019StyleSubscores';
import { InlineResponse2002 } from './InlineResponse2002';
import { InlineResponse20020 } from './InlineResponse20020';
import { InlineResponse20021 } from './InlineResponse20021';
import { InlineResponse20021Dates } from './InlineResponse20021Dates';
import { InlineResponse20022 } from './InlineResponse20022';
import { InlineResponse20023 } from './InlineResponse20023';
import { InlineResponse20024 } from './InlineResponse20024';
import { InlineResponse20025 } from './InlineResponse20025';
import { InlineResponse20026 } from './InlineResponse20026';
import { InlineResponse20027 } from './InlineResponse20027';
import { InlineResponse20027Entities } from './InlineResponse20027Entities';
import { InlineResponse20028 } from './InlineResponse20028';
import { InlineResponse20028Images } from './InlineResponse20028Images';
import { InlineResponse20028License } from './InlineResponse20028License';
import { InlineResponse20029 } from './InlineResponse20029';
import { InlineResponse2002News } from './InlineResponse2002News';
import { InlineResponse2003 } from './InlineResponse2003';
import { InlineResponse20030 } from './InlineResponse20030';
import { InlineResponse20031 } from './InlineResponse20031';
import { InlineResponse20032 } from './InlineResponse20032';
import { InlineResponse2004 } from './InlineResponse2004';
import { InlineResponse2004Jokes } from './InlineResponse2004Jokes';
import { InlineResponse2005 } from './InlineResponse2005';
import { InlineResponse2005Memes } from './InlineResponse2005Memes';
import { InlineResponse2006 } from './InlineResponse2006';
import { InlineResponse2007 } from './InlineResponse2007';
import { InlineResponse2007Images } from './InlineResponse2007Images';
import { InlineResponse2008 } from './InlineResponse2008';
import { InlineResponse2009 } from './InlineResponse2009';
import { InlineResponse200Books } from './InlineResponse200Books';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

const supportedMediaTypes: { [mediaType: string]: number } = {
  "application/json": Infinity,
  "application/octet-stream": 0,
  "application/x-www-form-urlencoded": 0
}


let enumsMap: Set<string> = new Set<string>([
]);

let typeMap: {[index: string]: any} = {
    "InlineResponse200": InlineResponse200,
    "InlineResponse2001": InlineResponse2001,
    "InlineResponse20010": InlineResponse20010,
    "InlineResponse20011": InlineResponse20011,
    "InlineResponse20012": InlineResponse20012,
    "InlineResponse20013": InlineResponse20013,
    "InlineResponse20014": InlineResponse20014,
    "InlineResponse20014Authors": InlineResponse20014Authors,
    "InlineResponse20015": InlineResponse20015,
    "InlineResponse20015Results": InlineResponse20015Results,
    "InlineResponse20016": InlineResponse20016,
    "InlineResponse20017": InlineResponse20017,
    "InlineResponse20018": InlineResponse20018,
    "InlineResponse20018Document": InlineResponse20018Document,
    "InlineResponse20018Sentences": InlineResponse20018Sentences,
    "InlineResponse20019": InlineResponse20019,
    "InlineResponse20019Interestingness": InlineResponse20019Interestingness,
    "InlineResponse20019InterestingnessSubscores": InlineResponse20019InterestingnessSubscores,
    "InlineResponse20019Readability": InlineResponse20019Readability,
    "InlineResponse20019ReadabilityMainscores": InlineResponse20019ReadabilityMainscores,
    "InlineResponse20019ReadabilitySubscores": InlineResponse20019ReadabilitySubscores,
    "InlineResponse20019Skimmability": InlineResponse20019Skimmability,
    "InlineResponse20019SkimmabilityMainscores": InlineResponse20019SkimmabilityMainscores,
    "InlineResponse20019SkimmabilitySubscores": InlineResponse20019SkimmabilitySubscores,
    "InlineResponse20019Style": InlineResponse20019Style,
    "InlineResponse20019StyleSubscores": InlineResponse20019StyleSubscores,
    "InlineResponse2002": InlineResponse2002,
    "InlineResponse20020": InlineResponse20020,
    "InlineResponse20021": InlineResponse20021,
    "InlineResponse20021Dates": InlineResponse20021Dates,
    "InlineResponse20022": InlineResponse20022,
    "InlineResponse20023": InlineResponse20023,
    "InlineResponse20024": InlineResponse20024,
    "InlineResponse20025": InlineResponse20025,
    "InlineResponse20026": InlineResponse20026,
    "InlineResponse20027": InlineResponse20027,
    "InlineResponse20027Entities": InlineResponse20027Entities,
    "InlineResponse20028": InlineResponse20028,
    "InlineResponse20028Images": InlineResponse20028Images,
    "InlineResponse20028License": InlineResponse20028License,
    "InlineResponse20029": InlineResponse20029,
    "InlineResponse2002News": InlineResponse2002News,
    "InlineResponse2003": InlineResponse2003,
    "InlineResponse20030": InlineResponse20030,
    "InlineResponse20031": InlineResponse20031,
    "InlineResponse20032": InlineResponse20032,
    "InlineResponse2004": InlineResponse2004,
    "InlineResponse2004Jokes": InlineResponse2004Jokes,
    "InlineResponse2005": InlineResponse2005,
    "InlineResponse2005Memes": InlineResponse2005Memes,
    "InlineResponse2006": InlineResponse2006,
    "InlineResponse2007": InlineResponse2007,
    "InlineResponse2007Images": InlineResponse2007Images,
    "InlineResponse2008": InlineResponse2008,
    "InlineResponse2009": InlineResponse2009,
    "InlineResponse200Books": InlineResponse200Books,
}

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap.has(expectedType)) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string, format: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index in data) {
                let date = data[index];
                transformedData.push(ObjectSerializer.serialize(date, subType, format));
            }
            return transformedData;
        } else if (type === "Date") {
            if (format == "date") {
                let month = data.getMonth()+1
                month = month < 10 ? "0" + month.toString() : month.toString()
                let day = data.getDate();
                day = day < 10 ? "0" + day.toString() : day.toString();

                return data.getFullYear() + "-" + month + "-" + day;
            } else {
                return data.toISOString();
            }
        } else {
            if (enumsMap.has(type)) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index in attributeTypes) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type, attributeType.format);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string, format: string) {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index in data) {
                let date = data[index];
                transformedData.push(ObjectSerializer.deserialize(date, subType, format));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap.has(type)) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index in attributeTypes) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type, attributeType.format);
            }
            return instance;
        }
    }


    /**
     * Normalize media type
     *
     * We currently do not handle any media types attributes, i.e. anything
     * after a semicolon. All content is assumed to be UTF-8 compatible.
     */
    public static normalizeMediaType(mediaType: string | undefined): string | undefined {
        if (mediaType === undefined) {
            return undefined;
        }
        return mediaType.split(";")[0].trim().toLowerCase();
    }

    /**
     * From a list of possible media types, choose the one we can handle best.
     *
     * The order of the given media types does not have any impact on the choice
     * made.
     */
    public static getPreferredMediaType(mediaTypes: Array<string>): string {
        /** According to OAS 3 we should default to json */
        if (!mediaTypes) {
            return "application/json";
        }

        const normalMediaTypes = mediaTypes.map(this.normalizeMediaType);
        let selectedMediaType: string | undefined = undefined;
        let selectedRank: number = -Infinity;
        for (const mediaType of normalMediaTypes) {
            if (supportedMediaTypes[mediaType!] > selectedRank) {
                selectedMediaType = mediaType;
                selectedRank = supportedMediaTypes[mediaType!];
            }
        }

        if (selectedMediaType === undefined) {
            throw new Error("None of the given media types are supported: " + mediaTypes.join(", "));
        }

        return selectedMediaType!;
    }

    /**
     * Convert data to a string according the given media type
     */
    public static stringify(data: any, mediaType: string): string {
        if (mediaType === "application/json") {
            return JSON.stringify(data);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.stringify.");
    }

    /**
     * Parse data from a string according to the given media type
     */
    public static parse(rawData: string, mediaType: string | undefined) {
        if (mediaType === undefined) {
            throw new Error("Cannot parse content. No Content-Type defined.");
        }

        if (mediaType === "application/json") {
            return JSON.parse(rawData);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.parse.");
    }
}
