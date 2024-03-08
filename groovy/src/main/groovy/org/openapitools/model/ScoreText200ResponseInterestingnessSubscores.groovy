package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ScoreText200ResponseInterestingnessSubscores {
    
    List<Integer> titleRatingScore
    
    List<Integer> quoteScore
    
    List<Integer> lengthScore
    
    List<Integer> linkScore
    
    List<Integer> googleHitsScore
}
