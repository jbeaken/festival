package org.swp.marxism.domain;

import javax.validation.constraints.NotNull;

public class MarxismAbout {
	
	@NotNull
	public String heading;
	
	public String subHeading;
	
	public String subSubHeading;
	
	public String description;
	
	@NotNull
	public String headingText;

	public String getHeading() {
		return heading;
	}

	public void setHeading(String heading) {
		this.heading = heading;
	}

	public String getSubHeading() {
		return subHeading;
	}

	public void setSubHeading(String subHeading) {
		this.subHeading = subHeading;
	}

	public String getSubSubHeading() {
		return subSubHeading;
	}

	public void setSubSubHeading(String subSubHeading) {
		this.subSubHeading = subSubHeading;
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
