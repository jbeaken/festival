@GrabConfig(systemClassLoader=true)

@Grab('com.opencsv:opencsv:4.2')
@Grab('mysql:mysql-connector-java:5.1.39')

import groovy.sql.Sql

import com.opencsv.CSVReader
import com.opencsv.CSVParser
import com.opencsv.CSVReaderBuilder
import com.opencsv.CSVParserBuilder

sql = Sql.newInstance("jdbc:mysql://localhost:3306/marxism", "root", "admin", "com.mysql.jdbc.Driver")

problems = []
count = 0

sql.executeUpdate("delete from theme_meetings")
sql.executeUpdate("delete from meeting")

CSVParser parser = new CSVParserBuilder().build();
	
final CSVReader reader = new CSVReaderBuilder( new FileReader("/home/git/marxism/src/main/etc/timetable4.csv") )
	.withSkipLines(1)
	.withCSVParser(parser)
	.build();

while ((fields = reader.readNext()) != null) {
	  def day = fields[0].trim().toUpperCase()
	  def time = fields[1].trim()
	  def title = fields[2].trim() //replace('--', ',').replace('""', '%%').replace('"', ""). replace('%%', '"')
	  def speakers = fields[3]
	  def theme1 = fields[4]
	  def theme2 = fields[5]
	  def theme3 = fields[6]
	  def description = fields[7]
	  
	  def rowId = sql.executeInsert("""insert into meeting (creator, date_created, title, day, time, speakers, marxism_website_id, description) 
	  			  values ('admin', now(), ?, ?, ?, ?, ?, ?)""", [title, day, time, speakers, 1, description])
	  
	  long meetingId = rowId[0][0] 
	  
	  //Themes
	  if(theme1) addTheme( theme1, meetingId )
	  if(theme2) addTheme( theme2, meetingId )
	  if(theme3) addTheme( theme3, meetingId )
	  
	  //println fields
	  println "title : " + title
	  println "speakers : " + speakers
	  println "description : " + description
	
	  count++
}


def addTheme( theme, meetingId ) {

	theme = theme.trim().toLowerCase()
	
	println "Adding theme " + theme
	
	if(theme == 'culture' || theme == 'palestine') return //doesn't exist yet
	
	def themeId = null
	
	switch( theme ) {
		case 'liberation' :
			themeId = 7
			break;
		case 'trump' :
			themeId = 8
			break;
		case 'class' :
			themeId = 9
			break;
		case 'sexism' :
			themeId = 5
			break;
		case 'imperialism' :
			themeId = 6
			break;
		case 'marx@200' :
			themeId = 3
			break;
		case 'racism' :
			themeId = 2
			break;
		case 'socialism' :
			themeId = 1
			break;
		case 'corbyn' :
			themeId = 1
			break;
		case 'climate' :
			themeId = 4
			break;
		}	
		
		if(!themeId) throw new RuntimeException();	
		
		sql.executeUpdate("insert into theme_meetings (meetings_id, themes_id) values (?, ?)", [meetingId, themeId])																												
}


class Meeting {
	String day
	String time
	String title
	String speakers
	String theme1
	String theme2
	String theme3
	String description
}
println "Finished importing ${count} meetings"
