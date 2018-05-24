import java.text.SimpleDateFormat;

import groovy.sql.Sql;
import groovy.grape.Grape;

Grape.grab(group:'mysql', module:'mysql-connector-java', version:'5.1.39', classLoader: this.class.classLoader.rootLoader)
this.class.classLoader.getURLs().each{
  ClassLoader.systemClassLoader.addURL(it);
}

sql = Sql.newInstance("jdbc:mysql://localhost:3306/marxism", "root", "admin", "com.mysql.jdbc.Driver")

problems = []
count = 0

sql.executeUpdate("delete from meeting")

new File("/home/git/marxism/src/main/etc/timetable.csv").splitEachLine(",") {fields ->
  def day = fields[0].trim().toUpperCase()
  def time = fields[1].trim()
  def title = fields[2].trim().replace('--', ',')
  def speakers = fields[3]
  def theme = fields[4]
  
  if(speakers) speakers = speakers.replace('--', ',')
  
  if( day == 'DAY') return //header row
  
  sql.executeInsert("""insert into meeting (creator, date_created, title, theme_id, day, time, speakers, marxism_website_id) 
  values ('admin', now(), ?, ?, ?, ?, ?, ?)""", [title, 1, day, time, speakers, 1])
  
  //println fields
  println "title : " + title
  println "speakers : " + speakers

  //def branchToDelete = sql.firstRow("select b.id from branch b where name = ?", originalBranchName)
  //def mergeIntoBranch = sql.firstRow("select b.id from branch b where name = ?", mergeToBranchName)

  count++
  //sql.executeUpdate("update person p set email = null where email = ?", [email])

}

println "Finished importing ${count} meetings"
