insert into ticket (id, name, code, description) values (1, "Ticket", "TCK", "A Ticket that gets you into marxism");

insert into marxism_website_content (id, name, is_live) values (1, '2018', true);

insert into speaker (id, name, short_description, long_description, image_url) 
values (1, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg');
insert into speaker (id, name, short_description, long_description, image_url) 
values (2, 'Sheila Coleman', 'Hillsborough', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'sheila-coleman-640x415.jpg');
insert into speaker (id, name, short_description, long_description, image_url) 
values (3, 'Ian Angus', 'Anti Racism Activist', 'Ian Angus is a socialist and ecosocialist activist in Canada. Angus is the editor of Climate and Capitalism.', 'Ian-Angus-640x415.jpg');
insert into speaker (id, name, short_description, long_description, image_url) 
values (4, 'Pat Mills', '2000AD Creator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'pat-mills-2000AD-640x415.jpg');
insert into speaker (id, name, short_description, long_description, image_url) 
values (5, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg');
insert into speaker (id, name, short_description, long_description, image_url) 
values (6, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg');

insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 1, 0);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 2, 1);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 3, 2);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 4, 3);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 5, 4);
insert into marxism_website_content_speakers (marxism_website_content_id, speakers_id, speaker_index) values (1, 6, 5);