package org.party.festival.bean;

import lombok.Data;

import java.io.Serializable;

@Data
public abstract class AbstractBean implements Serializable {

    private Long id;

}