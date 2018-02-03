insert into ticket (id, name, code, description) values (1, "Ticket", "TCK", "A Ticket that gets you into marxism");

insert into marxism_website_content (id, name, is_live) values (1, '2018', true);

insert into speaker (id, name, short_description, long_description) values (1, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.');
insert into speaker (id, name, short_description, long_description) values (2, 'Sheila Coleman', 'Hillsborough', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.');
insert into speaker (id, name, short_description, long_description) values (3, 'Ian Angus', 'Anti Racism Activist', 'Ian Angus is a socialist and ecosocialist activist in Canada. Angus is the editor of Climate and Capitalism.');
insert into speaker (id, name, short_description, long_description) values (4, 'Pat Mills', '2000AD Creator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.');
insert into speaker (id, name, short_description, long_description) values (5, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.');
insert into speaker (id, name, short_description, long_description) values (6, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.');

insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 1, 1);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 2, 2);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 3, 3);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 4, 4);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 5, 5);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 6, 6);