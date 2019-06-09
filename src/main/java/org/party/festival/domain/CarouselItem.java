package org.party.festival.domain;

import lombok.Data;

@Data
public class CarouselItem extends MarxismEntity {
	
	private String name;
	
	private String text;
	
	private String imageUrl;
}
