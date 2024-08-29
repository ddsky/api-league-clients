/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ScoreText200ResponseStyleSubscores } from './scoreText200ResponseStyleSubscores';
import { ScoreText200ResponseReadabilityMainscores } from './scoreText200ResponseReadabilityMainscores';


export interface ScoreText200ResponseStyle { 
    mainscores?: ScoreText200ResponseReadabilityMainscores;
    subscores?: ScoreText200ResponseStyleSubscores;
}

