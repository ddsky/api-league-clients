package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.ScoreText200ResponseInterestingness;
import org.openapitools.model.ScoreText200ResponseReadability;
import org.openapitools.model.ScoreText200ResponseSkimmability;
import org.openapitools.model.ScoreText200ResponseStyle;

@Canonical
class ScoreText200Response {
    
    Integer numberOfWords
    
    Integer numberOfSentences
    
    ScoreText200ResponseReadability readability
    
    ScoreText200ResponseSkimmability skimmability
    
    ScoreText200ResponseInterestingness interestingness
    
    ScoreText200ResponseStyle style
    
    BigDecimal totalScore
}
