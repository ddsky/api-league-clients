package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ScoreText200ResponseInterestingnessSubscores {
    
    List<Integer> titleRatingScore = new ArrayList<>()
    
    List<Integer> quoteScore = new ArrayList<>()
    
    List<Integer> lengthScore = new ArrayList<>()
    
    List<Integer> linkScore = new ArrayList<>()
    
    List<Integer> googleHitsScore = new ArrayList<>()
}
