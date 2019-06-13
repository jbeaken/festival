package org.party.festival.service;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.party.festival.bean.Website;
import org.springframework.web.bind.annotation.RequestBody;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

@Component
@Slf4j
public class WebsiteService {
	
	@Value("${festival.website.filepath}")
	private String websiteFilepath;

	public synchronized Website loadWebsiteFromFileSystem() {
		Website website = null;

		StringBuilder contentBuilder = new StringBuilder();

		log.info("Loading website from file system cache at {}", websiteFilepath);

		try (Stream<String> stream = Files.lines(Paths.get(websiteFilepath), StandardCharsets.UTF_8)) {

			stream.forEach(s -> contentBuilder.append(s).append("\n"));

			String json = contentBuilder.toString();

			website = readWebsiteFromJson( json );

			log.debug( "Website : " + website );

			log.info("All loaded!");

		} catch (IOException e) {
			log.error("Cannot load website from file", e);
		}

		return website;
	}

	private Website readWebsiteFromJson(String json) throws IOException {

		ObjectMapper mapper = new ObjectMapper();

		Website website =  mapper.readValue(json, Website.class);

		return website;
	}

	public synchronized void saveWebsiteToFileSystem(@RequestBody Website website) throws JsonProcessingException, FileNotFoundException {

		ObjectMapper mapper = new ObjectMapper();

		String json = mapper.writeValueAsString(website);

		try (PrintWriter out = new PrintWriter(websiteFilepath)) {
			log.info("Saving website to file {}....", websiteFilepath);

			log.debug(json);

			out.write( json);

			log.info("...successful!");
		}
	}
}
