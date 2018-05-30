package org.swp.marxism.util;

import java.util.List;

import org.swp.marxism.domain.Meeting;
import org.swp.marxism.domain.Theme;

public class HtmlBuilder {

	
	public void build(Meeting meeting) {
		String speaker = meeting.getSpeakers() == null ? "&nbsp;" : meeting.getSpeakers();
		
		String themes = meeting.getThemes().isEmpty() ? "&nbsp;" : "";
		
		String title = sanitiseString( meeting.getTitle() );
		
		for(Theme theme : meeting.getThemes()) {
			themes += "<span class='label label-warning'>" + theme.getName() + "</span>&nbsp;";
		}
		
		String dataContent = meeting.getThemes().isEmpty() ? "There are no themes" : getDataContent( meeting );
		
		
		StringBuilder builder = new StringBuilder();
		
		builder.append("<div class='col-sm-4 meeting__holder'>");
		builder.append("<a href='#modal_no_img' class='meetings__item animate-sm-step-0' data-animate='animate-up' data-toggle='modal'");
		builder.append(" data-heading='" + title + "'");
		//builder.append(" data-img='" + getTitle() + "'");
		builder.append(" data-content='" + dataContent + "'>");
		builder.append("<div class='meeting__item__footer'>");
		builder.append("<h3 class='meetings__item__title'>" + title + "</h3>");
		builder.append("<div class='meetings__item__speakers'>" + speaker + "</div>");
		builder.append("<div class='meetings__item__time'>" + meeting.getDay() + " " + meeting.getTime() + "</div>");
		builder.append("<div class='meetings__item__theme'>" + themes + "</div>");
		
		
		builder.append("</div></a></div>");
		
		meeting.setJson( builder.toString() );
		
	}
	
	private String getDataContent(Meeting meeting) {
		StringBuilder builder = new StringBuilder();
		
		List<Theme> themes = meeting.getThemes();
		
		if(themes.isEmpty()) {
			builder.append("<div class=\"row\">");
		}
		
		for(Theme theme : meeting.getThemes()) {
			builder.append("<br/>This meeting is part of the Marxism Festival 2018 theme <strong>" + theme.getShortDescription() + "</strong>");
			builder.append("<br/><br/>" + theme.getLongDescription());
			builder.append("<br/><br/>Please see below all meetings at the conference with this theme :<br/><br/>");
			
			for(Meeting m : theme.getMeetings()) {
				String title = sanitiseString( m.getTitle() );
				builder.append("<div class=\"col-sm-4 meetings__modal__holder\">");
				builder.append("<div class=\"meetings__modal__item__title\">" + title + "</div>");
				builder.append("<div class=\"meetings__modal__item__time\">" + m.getDay() + " " + m.getTime() + "</div>");
				builder.append("</div>");
			}
		}
		
		if(themes.isEmpty()) {
			builder.append("</div>");
		}
		
		return builder.toString();
	}

	private String sanitiseString(String str) {
		return str.replace("\"", "&#34;").replace("'", "&#39;");
	}
}
