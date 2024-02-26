package com.apileague.client.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse20019SkimmabilitySubscores {
    
    List<Integer> bulletPointRatioScore = new ArrayList<Integer>()
    
    List<Integer> imageScore = new ArrayList<Integer>()
    
    List<Integer> highlightedWordRatioScore = new ArrayList<Integer>()
    
    List<Integer> videoScore = new ArrayList<Integer>()
    
    List<Integer> paragraphScore = new ArrayList<Integer>()
    
    List<Integer> paragraphHeadlineRatioScore = new ArrayList<Integer>()
}
