package org.swp.marxism.domain;

import javax.validation.constraints.NotNull;

public class MarxismSpeakers {
	
	@NotNull
	public String heading;
	
	public String description;
	
	@NotNull
	public String headingText;

	public String getHeading() {
		return heading;
	}

	public void setHeading(String heading) {
		this.heading = heading;
	}

	public String getHeadingText() {
		return headingText;
	}

	public void setHeadingText(String headingText) {
		this.headingText = headingText;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
