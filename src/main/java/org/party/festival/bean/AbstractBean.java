package org.party.festival.bean;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import java.io.Serializable;

@Data
@JsonIgnoreProperties({"dateCreated", "dateUpdated", "creator", "updater"})
public abstract class AbstractBean implements Serializable {

    private Long id;

}