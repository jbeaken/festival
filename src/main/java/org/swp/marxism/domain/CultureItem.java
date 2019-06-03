package org.swp.marxism.domain;

import lombok.Data;

@Data
public class CultureItem extends MarxismEntity {
	
	private String name;
	
	private String shortDescription;
	
	private String longDescription;
	
	private String videoUrl;
	
	private String readMore;
}
