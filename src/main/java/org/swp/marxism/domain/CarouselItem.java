package org.swp.marxism.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
public class CarouselItem extends MarxismEntity {
	
	@NotNull
	@Column(unique=true)
	private String name;
	
	private String text;
	
	private String imageUrl;
}
