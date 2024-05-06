package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ScoreText200ResponseStyleSubscores {
    
    List<Integer> abbreviationScore = new ArrayList<>()
    
    List<Integer> styleScore = new ArrayList<>()
    
    List<Integer> spellingScore = new ArrayList<>()
}
