package org.swp.marxism.domain;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class About extends MarxismEntity {
	
	@NotNull
	@Size(max=30, min=3)
	private String name;
	
	@NotNull
	@Size(max=30, min=3)
	private String icon;
	
	@NotNull
	@Size(max=1000, min=3)
	private String text;
	
	@Size(max=2500, min=3)
	private String modalText;	
	
	private String modalImage;	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getModalText() {
		return modalText;
	}

	public void setModalText(String modalText) {
		this.modalText = modalText;
	}

	public String getModalImage() {
		return modalImage;
	}

	public void setModalImage(String modalImage) {
		this.modalImage = modalImage;
	}
}

