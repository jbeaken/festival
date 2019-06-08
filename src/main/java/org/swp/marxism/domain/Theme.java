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

@Entity
@Data
public class Theme extends MarxismEntity {
	
	@NotNull
	@Size(max=30, min=3)
	@Column(unique=true)
	private String name;
	
	@NotNull
	@Size(max=255, min=3)
	private String shortDescription;
	
	@NotNull
	@Column(columnDefinition = "text")
	@Size(max=1000, min=3)
	private String longDescription;
	
	@Transient
	private String readMore;
	
	@ManyToMany
	private List<Meeting> meetings;

}
