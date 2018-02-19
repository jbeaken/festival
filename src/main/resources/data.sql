insert into ticket (id, name, code, description, price) values (1, "Ticket", "WGD", "Waged, £55", 55);
insert into ticket (id, name, code, description, price) values (2, "Ticket", "WGDAP", "Waged + After party, £60", 60);
insert into ticket (id, name, code, description, price) values (3, "Ticket", "UNWGD", "Unwaged, £30", 30);
insert into ticket (id, name, code, description, price) values (4, "Ticket", "UNWGDAP", "Unwaged + After party £35", 35);
insert into ticket (id, name, code, description, price) values (5, "Ticket", "HESTD", "HE Student, £30", 30);
insert into ticket (id, name, code, description, price) values (6, "Ticket", "HESTD", "HE Student + After party £35", 35);
insert into ticket (id, name, code, description, price) values (7, "Ticket", "UNWGD", "-18 or FE, £20", 20);

insert into marxism_website_content (id, name, is_live, heading, sub_heading, sub_sub_heading, description) values (1, '2018', true, 'Marxism 2018', 'A festival of socialist ideas', '5 - 8 July, Central London', 'Nunc sed blandit dui. Phasellus lacinia iaculis justo nec elementum. Morbi vel urna velit. Nulla pharetra a erat in vestibulum.');

-- SPEAKERS
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

-- THEMES
insert into theme (id, name, short_description, long_description, image_url) 
values (1, 'Corbyn', 'Jeremy Corbyn, the Labour Party and the fight for socialism', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'corbyn.jpg');
insert into theme (id, name, short_description, long_description, image_url) 
values (2, 'Racism', 'Resisting the racist backlash and the rise of fascism across Europe', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'sutr.jpg');
insert into theme (id, name, short_description, long_description, image_url) 
values (3, 'Marx', '#Marx200 Anniversary – was Marx right?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'marx.jpg');
insert into theme (id, name, short_description, long_description, image_url) 
values (4, 'Climate Change', 'Capitalism and climate change', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'climate.jpg');
insert into theme (id, name, short_description, long_description, image_url) 
values (5, 'Me Too', '#MeToo: challenging sexism and the system ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'sexism-and-the-system-yussre-el-bardicy.jpg');
insert into theme (id, name, short_description, long_description, image_url) 
values (6, 'Imperialism', 'War, imperialism, the Middle East and Palestine', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'imperialism-.jpg');

insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 1, 0);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 2, 1);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 3, 2);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 4, 3);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 5, 4);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 6, 5);