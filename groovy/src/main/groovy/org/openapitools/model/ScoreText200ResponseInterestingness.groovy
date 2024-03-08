package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ScoreText200ResponseInterestingnessSubscores;
import org.openapitools.model.ScoreText200ResponseSkimmabilityMainscores;

@Canonical
class ScoreText200ResponseInterestingness {
    
    ScoreText200ResponseSkimmabilityMainscores mainscores
    
    ScoreText200ResponseInterestingnessSubscores subscores
}
