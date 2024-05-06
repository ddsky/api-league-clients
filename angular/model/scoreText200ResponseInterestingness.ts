/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ScoreText200ResponseInterestingnessSubscores } from './scoreText200ResponseInterestingnessSubscores';
import { ScoreText200ResponseSkimmabilityMainscores } from './scoreText200ResponseSkimmabilityMainscores';


export interface ScoreText200ResponseInterestingness { 
    mainscores?: ScoreText200ResponseSkimmabilityMainscores;
    subscores?: ScoreText200ResponseInterestingnessSubscores;
}

