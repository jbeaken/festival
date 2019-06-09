package org.party.festival.service;


import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.party.festival.bean.Website;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

@Component
@Slf4j
public class WebsiteService {
	
	public synchronized String getWebsite() throws IOException {

		StringBuilder contentBuilder = new StringBuilder();

		try (Stream<String> stream = Files.lines( Paths.get("website.json"), StandardCharsets.UTF_8)) {
			stream.forEach(s -> contentBuilder.append(s).append("\n"));
		}

		return contentBuilder.toString();

	}

	public synchronized Website loadWebsiteFromFileSystem(Website website) {
		StringBuilder contentBuilder = new StringBuilder();

		try (Stream<String> stream = Files.lines(Paths.get("website.json"), StandardCharsets.UTF_8)) {
			stream.forEach(s -> contentBuilder.append(s).append("\n"));

			ObjectMapper mapper = new ObjectMapper();
			website = mapper.readValue(contentBuilder.toString(), Website.class);



		} catch (IOException e) {
			log.error("Cannot load website from file", e);
		}
		return website;
	}
}
