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

		String title = sanitiseString(meeting.getTitle());

		Boolean isHighlight = Boolean.FALSE;
		Boolean hasNoThemeOrDescription = Boolean.FALSE;

		Day day = meeting.getDay();
		String time = meeting.getTime();
		String themeText = getThemeText(meeting);
		String venueDiv = getVenueDiv(meeting);

		// Add class to title which media queries will style, e.g. using font-size :
		// 1.0rem
		String meetingHolderContainerClass = getClassForSize(title.length() + speaker.length(), "meeting_item_");
		String speakersClass = getClassForSpeaker(speaker);
		String titleClass = getClassForTitle(title);

		if ((day == Day.THURSDAY && time.equals("19.00")) || (day == Day.SUNDAY && time.equals("18.30"))
				|| (day == Day.SUNDAY && time.equals("17.30"))) {
			isHighlight = Boolean.TRUE;
			// As it's in bigger box
			meetingHolderContainerClass = "meeting_item_sm";
		}

		if (meeting.getThemes().isEmpty() && meeting.getDescription() == null) {
			hasNoThemeOrDescription = Boolean.TRUE;
		}

		if (!hasNoThemeOrDescription) {
			themeText += "<span class='meeting-read-more'>>>read more</span>";
		}

		String dataContent = getDataContent(meeting);

		StringBuilder builder = new StringBuilder();

		if (isHighlight) {
			builder.append("<div class='col-sm-8 meeting__holder'>");
		} else {
			builder.append("<div class='col-sm-4 meeting__holder'>");
		}

		builder.append("<div class='meeting__item__container'>");

		builder.append("<div class='meetings__item__time'>" + meeting.getDay().getDisplayName() + ", "
				+ meeting.getTime() + "h</div>");

		builder.append("<hr/>");

		builder.append("<div class='meeting__item__text " + meetingHolderContainerClass + "'>");
		builder.append("<div class='meetings__item__title " + titleClass + "'>" + title + "</div>");
		builder.append("<div class='meetings__item__speakers " + speakersClass + "'>" + speaker + "</div>");
		builder.append("</div>"); // .meeting__item__text

		if (hasNoThemeOrDescription == Boolean.FALSE) {
			builder.append("<a href='#modal_no_img' class='meetings__item' data-toggle='modal'");
			builder.append(" data-heading='" + title + "'");
			builder.append(" data-content='" + dataContent + "'>");
		}

		builder.append("<div class='meetings__item__theme'>" + themeText + "</div>");

		if (hasNoThemeOrDescription == Boolean.FALSE) {
			builder.append("</a>");
		}

		builder.append( venueDiv );

		builder.append("</div>"); // .meeting__item__container

		builder.append("</div>"); // .meeting__holder

		meeting.setJson(builder.toString());

	}

	private String getClassForSpeaker(String speaker) {
		String classSize = "xs";
		
		int length = speaker.length();

		if (length > 40) {
			classSize = "xl";
		} else if (length > 30) {
			classSize = "lg";
		} else if (length > 20) {
			classSize = "md";
		} else if (length > 15) {
			classSize = "sm";
		}
		
		return "meeting_speaker_" + classSize;
	}
	
	private String getClassForVenue(String venue) {
		String classSize = "xs";
		
		int length = venue.length();

		if (length > 30) {
			classSize = "xl";
		} else if (length > 20) {
			classSize = "lg";
		} else if (length > 10) {
			classSize = "md";
		} else if (length > 5) {
			classSize = "sm";
		}
		
		return "meeting_venue_" + classSize;
	}	
	
	private String getClassForTitle(String title) {
		String classSize = "xs";
		
		int length = title.length();

		if (length > 60) {
			classSize = "xl";
		} else if (length > 50) {
			classSize = "lg";
		} else if (length > 40) {
			classSize = "md";
		} else if (length > 25) {
			classSize = "sm";
		}
		
		return "meeting_title_" + classSize;
	}	

	private String getClassForSize(int length, String classText) {
		String classSize = "xs";

		if (length > 70) {
			classSize = "xl";
		} else if (length > 60) {
			classSize = "lg";
		} else if (length > 50) {
			classSize = "md";
		} else if (length > 40) {
			classSize = "sm";
		}
		return classText + classSize;
	}

	private String getVenueDiv(Meeting meeting) {
		
		String venueText = meeting.getVenue().getAddress() + " - " + meeting.getRoom();
		String classForVenue = getClassForVenue( venueText );
		String venueDiv = "<div class='meetings__item__venue " + classForVenue + "'>";
		venueDiv += "<a href='#modal_img' class='meeting__item__venue' data-toggle='modal' data-ga='meeting_wheretofind' data-heading='Where to find us' data-img='/img/modal/map.jpg'";
		venueDiv += " data-content='<h1 class=\"text-center font-lindham\">Marxism Festival 2018 takes place in the heart of London.</h1><p>The event will mainly be based in Student Central, Malet Street, WC1E 7HY.</p><p>Meetings will also take place in:</p><ul><li><a href=\"https://www.google.co.uk/maps/search/The+Institute+of+Education,+20+Bedford+Way,+WC1H+0AL/@51.5171592,-0.1354243,15z/data=!3m1!4b1?hl=en\" target=\"_blank\">The Institute of Education, 20 Bedford Way, WC1H 0AL</a></li><li><a href=\"https://www.google.co.uk/maps/place/S+E+N+J+I+T+the+Institute+of+Education+University+of+London/@51.5238041,-0.1331508,17z/data=!4m8!1m2!2m1!1sThe+Institute+of+Education,+20+Bedford+Way,+WC1H+0AL!3m4!1s0x48761b3035bc76db:0xaceb7f515c3df740!8m2!3d51.5230423!4d-0.1278842?hl=en\" target=\"_blank\">The Friends Meeting House, 173-177 Euston Road, NW1 2BJ</a></li></ul><p>These are all very close to tube and mainline train stations.</p>'>";
		venueDiv += venueText;
		venueDiv += "<span class='meeting-venue-map'> >>map</span></a>";
		venueDiv += "</div>";
		return venueDiv;
	}

	private String getThemeText(Meeting meeting) {
		String themeText = "";
		for (Theme theme : meeting.getThemes()) {
			themeText += "#" + theme.getName() + "&nbsp;";
		}
		return themeText;
	}

	private String getDataContent(Meeting meeting) {

		boolean hasDescription = false;

		StringBuilder builder = new StringBuilder();

		List<Theme> themes = meeting.getThemes();

		builder.append("<div>");
		builder.append(
				"<div class=\"meetings__modal__item__time\">" + meeting.getDay() + " " + meeting.getTime() + "</div>");

		if (meeting.getDescription() != null) {
			String description = sanitiseString(meeting.getDescription());
			builder.append(description + "<br/>");
			hasDescription = true;
		}

		if (!themes.isEmpty()) {
			Theme theme = meeting.getThemes().get(0);
			builder.append("This meeting is part of the Marxism Festival 2018 theme <strong>"
					+ theme.getShortDescription() + "</strong>");

			if (hasDescription == false)
				builder.append("<br/><br/>" + theme.getLongDescription());

			builder.append("<br/><br/>Please see below all meetings at the conference with this theme :<br/><br/>");

			for (Meeting m : theme.getMeetings()) {
				String meetingHtml = getMeetingHtml(m);
				builder.append(meetingHtml);
			}
		}

		builder.append("</div>");

		return builder.toString();
	}

	private String getReadMore(Theme theme) {
		StringBuilder builder = new StringBuilder();

		builder.append("<div id=\"theme-meeting-holder\">");
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
		theme.setReadMore(readMore);
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
<<<<<<< HEAD
	}	
>>>>>>> d9a4772... Themes now ready to show meetings, speakers.sql added
=======
	}
>>>>>>> a5d96e3... Fixing timetable, now show rooms and venues. New style
}
