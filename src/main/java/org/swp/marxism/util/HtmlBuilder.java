package org.swp.marxism.util;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.swp.marxism.domain.Day;
import org.swp.marxism.domain.Meeting;
import org.swp.marxism.domain.Theme;

public class HtmlBuilder {

	protected static final Logger logger = LoggerFactory.getLogger(HtmlBuilder.class);

<<<<<<< HEAD
	
	public void build(Meeting meeting) {
=======
	public void buildMeeting(Meeting meeting) {
>>>>>>> d9a4772... Themes now ready to show meetings, speakers.sql added
		String speaker = meeting.getSpeakers() == null ? "&nbsp;" : meeting.getSpeakers();

		String themes = meeting.getThemes().isEmpty() ? "&nbsp;" : "";

		String title = sanitiseString(meeting.getTitle());

		Boolean isHighlight = Boolean.FALSE;
		String hasLongTitleClass = null;
		Boolean hasNoThemeOrDescription = Boolean.FALSE;

		Day day = meeting.getDay();
		String time = meeting.getTime();

		for (Theme theme : meeting.getThemes()) {
			themes += "<span class='label label-warning meeting-theme-label'>" + theme.getName() + "</span>&nbsp;";
		}

		// Add class to title which media queries will style, using font-size : 1.0rem
		// for example
		if (title.length() > 65) {
			logger.info(title);
			hasLongTitleClass = "meeting_item_long_title";
		} else if (title.length() > 50) {
			hasLongTitleClass = "meeting_item_medium_title";
		} else if (title.length() > 40) {
			hasLongTitleClass = "meeting_item_small_title";
		}

		if ((day == Day.THURSDAY && time.equals("19.00")) || (day == Day.SUNDAY && time.equals("18.30"))
				|| (day == Day.SUNDAY && time.equals("17.30"))) {
			isHighlight = Boolean.TRUE;
			hasLongTitleClass = null;
		}

		if (meeting.getThemes().isEmpty() && meeting.getDescription() == null) {
			hasNoThemeOrDescription = Boolean.TRUE;
		}

		if (!hasNoThemeOrDescription) {
			themes += "<span class='read-more meeting-read-more'>Read More</span>";
		}

		String dataContent = getDataContent(meeting);

		StringBuilder builder = new StringBuilder();

		if (isHighlight) {
			builder.append("<div class='col-sm-8 meeting__holder'>");
		} else {
			builder.append("<div class='col-sm-4 meeting__holder'>");
		}
		if (hasNoThemeOrDescription == Boolean.FALSE) {
			builder.append("<a href='#modal_no_img' class='meetings__item' data-toggle='modal'");
			builder.append(" data-heading='" + title + "'");
			builder.append(" data-content='" + dataContent + "'>");
		}
		builder.append("<div class='meeting__item__footer'>");
		if (hasLongTitleClass != null) {
			builder.append("<h3 class='meetings__item__title " + hasLongTitleClass + "'>" + title + "</h3>");
		} else {
			builder.append("<h3 class='meetings__item__title'>" + title + "</h3>");
		}
		builder.append("<div class='meetings__item__speakers'>" + speaker + "</div>");
		builder.append("<div class='meetings__item__time'>" + meeting.getDay() + " " + meeting.getTime() + "</div>");
		builder.append("<div class='meetings__item__theme'>" + themes + "</div>");

		builder.append("</div>");
		if (hasNoThemeOrDescription == Boolean.FALSE) {
			builder.append("</a>");
		}

		builder.append("</div>");

		meeting.setJson(builder.toString());

	}

	private String getDataContent(Meeting meeting) {
		StringBuilder builder = new StringBuilder();

		List<Theme> themes = meeting.getThemes();

		builder.append("<div>");
		builder.append(
				"<div class=\"meetings__modal__item__time\">" + meeting.getDay() + " " + meeting.getTime() + "</div>");

		if (!themes.isEmpty()) {
			Theme theme = meeting.getThemes().get(0);
			builder.append("<br/>This meeting is part of the Marxism Festival 2018 theme <strong>"
					+ theme.getShortDescription() + "</strong>");
			builder.append("<br/><br/>" + theme.getLongDescription());
			builder.append("<br/><br/>Please see below all meetings at the conference with this theme :<br/><br/>");

			for (Meeting m : theme.getMeetings()) {
				String meetingHtml = getMeetingHtml(m);
				builder.append(meetingHtml);
			}
		} else if (meeting.getDescription() != null) {
			String description = sanitiseString(meeting.getDescription());
			builder.append("<br/>" + description + "<br/>");
		}

		builder.append("</div>");

		return builder.toString();
	}

	private String getReadMore(Theme theme) {
		StringBuilder builder = new StringBuilder();
		
		builder.append("<div>");
		builder.append(theme.getLongDescription() + "<br/><br/>");
		builder.append("Please see below all meetings at the conference with this theme :<br/><br/>");

		for (Meeting m : theme.getMeetings()) {
			String meetingHtml = getMeetingHtml(m);
			builder.append(meetingHtml);
		}
		
		builder.append("</div>");

		return builder.toString();
	}

	private String getMeetingHtml(Meeting m) {
		StringBuilder builder = new StringBuilder();

		String title = sanitiseString(m.getTitle());

		builder.append("<div class=\"col-sm-4 meetings__modal__holder\">");
		builder.append("<div class=\"meetings__modal__item__title\">" + title + "</div>");
		builder.append("<div class=\"meetings__modal__item__time\">" + m.getDay() + " " + m.getTime() + "</div>");
		builder.append("</div>");

		return builder.toString();
	}
	
	private void buildTheme(Theme theme) {
		String readMore = getReadMore(theme);
		theme.setReadMore( readMore );
	}

	private String sanitiseString(String str) {
		return str.replace("\"", "&#34;").replace("'", "&#39;");
	}
<<<<<<< HEAD
=======

	public void buildMeetings(List<Meeting> meetings) {
		for (Meeting m : meetings) {
			buildMeeting(m);
		}
	}
	
	public void buildThemes(List<Theme> themes) {
		for (Theme t : themes) {
			buildTheme(t);
		}
	}	
>>>>>>> d9a4772... Themes now ready to show meetings, speakers.sql added
}
