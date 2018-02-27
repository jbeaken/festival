--insert into ticket (id, name, code, description, price) values (1, "Ticket", "WGD", "Waged, £55", 55);
--insert into ticket (id, name, code, description, price) values (2, "Ticket", "WGDAP", "Waged + After party, £60", 60);
--insert into ticket (id, name, code, description, price) values (3, "Ticket", "UNWGD", "Unwaged, £30", 30);
--insert into ticket (id, name, code, description, price) values (4, "Ticket", "UNWGDAP", "Unwaged + After party £35", 35);
--insert into ticket (id, name, code, description, price) values (5, "Ticket", "HESTD", "HE Student, £30", 30);
--insert into ticket (id, name, code, description, price) values (6, "Ticket", "HESTD", "HE Student + After party £35", 35);
--insert into ticket (id, name, code, description, price) values (7, "Ticket", "UNWGD", "-18 or FE, £20", 20);

insert into booking (id, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing)
values (1, 'UNCONFIRMED', now(), "John", "Smith", "jsmith@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "WAGED");
insert into booking (id, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing)
values (2, 'PAID', now(), "Jane", "Totem", "jtotem@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "STUDENT_FE");
insert into booking (id, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing)
values (3, 'UNCONFIRMED', now(), "Fred", "Letter", "fletter@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "UNWAGED");
insert into booking (id, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday)
values (4, 'CANCELLED', now(), "Susan", "Sontag", "sstotag@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "DAY", "UNWAGED", 1, null);
insert into booking (id, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday, saturday, sunday)
values (5, 'PAID', now(), "Sarah", "Higgins", "sstotag@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "DAY", "STUDENT_HE", 1, null, 1, 1);

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
values (1, 'Corbyn', 'Jeremy Corbyn, the Labour Party and the fight for socialism', 
	'Jeremy Corbyn&apos;s success at last year&apos;s general election shattered the Tories and transformed the political situation here in Britain. Meetings at Marxism Festival will debate the issues facing Corbyn and Labour and discuss how we can mobilise to bring about fundamental change.', 'corbyn.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (2, 'Racism', 
	'Resisting the racist backlash and the rise of fascism across Europe', 
	'Far right and fascist forces have grown across Europe and the bigoted presidency of Donald Trump adds to the instability across the globe.  Meanwhile hundreds of refugees continue to die as they flee war and persecution. At Marxism Festival we will discuss how best to respond to these challenges.', 'sutr.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (3, 'Marx', 
	'#Marx200 Anniversary – was Marx right?', 
	'Karl Marx was an anti-capitalist and revolutionary. But 200 years on from his birth are his ideas still relevant today? We will explore Marx&apos;s economic insights for a system in crisis as well as his method for understanding the world today.', 'marx.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (4, 'Climate Change', 'Capitalism and climate change', 
	'With a climate change denier in the White House and fossil fuel use locked into capitalism - how can we act to stop catastrophic climate change?  We will discuss how Marxist ideas help shed light on an understanding of nature, ecology and the environment.', 'climate.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (5, 'Me Too', '#MeToo: challenging sexism and the system', 
	'Headlines about the issue of sexual harassment have led to the #MeToo campaign with millions of women sharing their experiences.  There is a growing movement challenging ideas about gender and sexuality. But how can we build a collective response to the sexism structured into our society?', 'sexism-and-the-system-yussre-el-bardicy.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (6, 'Imperialism', 'War, imperialism, the Middle East and Palestine', 
	'From Syria to Palestine the Middle East is on fire – a terrible consequence of western colonialism and imperialism.  We will look at how war is endemic to capitalism, discuss the latest developments in the carve up of the world and crucially ask how we can organise to stop the bloodshed.', 'imperialism-.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (7, 'LGBT', 'Marxism, Trans politics and the fight for LGBT+ liberation', 
	'There is an offensive against transgender people – with attacks from the right wing media and the tripling of transphobic hate crime in the last five years. Meetings will discuss the fight for LGBT+ liberation, how trans people have fought as part of the wider movement for sexual liberation, and why trans rights are a demand every socialist and trade unionist should support.', 'imperialism-.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (8, 'Trump', 'Donald Trump, the US and resistance', 
	'The election as US president of an openly misogynistic, transphobic bigot who built his campaign on racist scapegoating has driven those who want to challenge oppression out onto the streets. We will discuss developments in the US and the potential for resistance to take on Trump.', 'imperialism-.jpg');
insert into theme (id, name, short_description, long_description, image_url)
values (9, 'Class', 'Class, struggle and the trade unions today', 
	'How can we resist the Tories offensive on working class people? Has the working class lost its power? How should we organise at work? And is there even a future of work or will robots take over? These are just some of the questions we will seek to address at Marxism Festival.', 'imperialism-.jpg');

insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 1, 0);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 2, 1);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 3, 2);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 4, 3);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 5, 4);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 6, 5);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 7, 6);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 8, 7);
insert into marxism_website_content_themes (marxism_website_content_id, themes_id, theme_index) values (1, 9, 8);
