package org.swp.marxism.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
public class About extends MarxismEntity {
	
	@NotNull
	@Size(max=30, min=3)
	private String name;
	
	@NotNull
	@Size(max=30, min=3)
	private String icon;
	
	@NotNull
	@Size(max=1000, min=3)
	@Column(columnDefinition = "text")
	private String text;
	
	@Size(max=2500, min=3)
	private String modalText;	
	
	private String modalImage;
}

