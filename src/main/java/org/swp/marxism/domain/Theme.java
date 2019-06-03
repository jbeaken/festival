package org.swp.marxism.domain;

import lombok.Data;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class Theme extends MarxismEntity {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
	
	private String readMore;
	
	private List<Meeting> meetings;
}
