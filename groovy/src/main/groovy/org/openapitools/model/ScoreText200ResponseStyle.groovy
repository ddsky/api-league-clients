package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ScoreText200ResponseReadabilityMainscores;
import org.openapitools.model.ScoreText200ResponseStyleSubscores;

@Canonical
class ScoreText200ResponseStyle {
    
    ScoreText200ResponseReadabilityMainscores mainscores
    
    ScoreText200ResponseStyleSubscores subscores
}
