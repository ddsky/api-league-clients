package com.apileague.client.model;

import groovy.transform.Canonical
import com.apileague.client.model.InlineResponse2005Memes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class InlineResponse2005 {
    
    List<InlineResponse2005Memes> memes = new ArrayList<InlineResponse2005Memes>()
    
    Integer available
}
