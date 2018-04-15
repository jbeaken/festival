--insert into ticket (id, name, code, description, price) values (1, "Ticket", "WGD", "Waged, £55", 55);
--insert into ticket (id, name, code, description, price) values (2, "Ticket", "WGDAP", "Waged + After party, £60", 60);
--insert into ticket (id, name, code, description, price) values (3, "Ticket", "UNWGD", "Unwaged, £30", 30);
--insert into ticket (id, name, code, description, price) values (4, "Ticket", "UNWGDAP", "Unwaged + After party £35", 35);
--insert into ticket (id, name, code, description, price) values (5, "Ticket", "HESTD", "HE Student, £30", 30);
--insert into ticket (id, name, code, description, price) values (6, "Ticket", "HESTD", "HE Student + After party £35", 35);
--insert into ticket (id, name, code, description, price) values (7, "Ticket", "UNWGD", "-18 or FE, £20", 20);

insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, after_party)
values (1, true, 'UNCONFIRMED', NOW() - INTERVAL 1 DAY, "John", "Smith", "jsmith@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "WAGED", true);
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing)
values (2, false, 'PAID', NOW() - INTERVAL 2 DAY, "Jane", "Totem", "jtotem@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "STUDENT_FE");
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing)
values (3, true, 'UNCONFIRMED', NOW() - INTERVAL 1 HOUR, "Fred", "Letter", "fletter@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "UNWAGED");
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday)
values (4, false, 'CANCELLED', NOW() - INTERVAL 2 MONTH, "Susan", "Sontag", "sstotag@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "DAY", "UNWAGED", 1, null);
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday, saturday, sunday, after_party)
values (5, true, 'PAID', NOW() - INTERVAL 3 HOUR, "Sarah", "Higgins", "sstotag@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "DAY", "STUDENT_HE", 1, null, 1, 1, true);
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday, saturday, sunday, accommodation_needs, accommodation_contact, children18months_to5years, children5years_to11years, children_under18months)
values (6, false, 'PAID', NOW() - INTERVAL 4 HOUR, "Joseph", "Bradley", "jbradley@gmail.com", "0207 388 454", "10 Terrance Street", null, "Brighton", "B4 3ED", "United Kingdom", "DAY", "STUDENT_HE", 1, null, 1, 1, "floor or bed", "Mr floor man", 2, null, 3);
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday, saturday, sunday, accommodation_needs, accommodation_contact, children18months_to5years, children5years_to11years, children_under18months)
values (7, true, 'CANCELLED', NOW() - INTERVAL 1 WEEK, "Hilary", "Bradley", "hbradley@gmail.com", "0207 444 454", "10 Terrance Street", "Kemptown", "Brighton", "B4 3ED", "United Kingdom", "FULL", "STUDENT_FE", null, null, null, null, null, null, null, 2, null);
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, thursday, friday, saturday, sunday, accommodation_needs, accommodation_contact, children18months_to5years, children5years_to11years, children_under18months, after_party)
values (8, true, 'CANCELLED', NOW() - INTERVAL 2 WEEK, "Sarah", "Homes", "shomes@hotmail.com", "0207 987 454", "10 Terrance Street", "Kemptown", "Brighton", "B4 3ED", "United Kingdom", "FLEXI", "STUDENT_FE", null, null, null, null, null, null, null, 2, null, true);

insert into marxism_website (id, name, is_live, 
    welcome_text1, welcome_text2, welcome_text3, welcome_text4, 
    about_heading, about_line2, about_line3, about_text, 
    pricing_heading, pricing_text, 
    pricing_full_eventfe, pricing_full_eventhe, pricing_full_event_unwaged, pricing_full_event_waged, 
    pricing_day_ticketfe, pricing_day_tickethe, pricing_day_ticket_unwaged, pricing_day_ticket_waged, 
    pricing_flexi_ticketfe, pricing_flexi_tickethe, pricing_flexi_ticket_unwaged, pricing_flexi_ticket_waged, 
    contact_address1, contact_address2, contact_address3, contact_address4, contact_email, contact_telephone, contact_heading, contact_line2,
    discount_text, apply_ticket_discount, discount_amount,
    theme_heading,
    video_url, audio_url, videos_url, gallery_url,
    show_booking, show_pricing, show_themes, show_about, show_speakers, show_contact, show_gallery, show_video,
    creator, date_created)
  values
  (1, '2018', true, 
   'Marxism Festival 2018', 'A festival of socialist ideas', '5 - 8 July, Central London', null,
   'Marxism 2018', 'A festival of socialist ideas', '5 - 8 July, Central London', 'If you were excited by Jeremy Corbyn&apos;s election as Labour leader, horrified by Donald Trump, want to challenge racism and oppression, desire action over climate change or are looking for an alternative to austerity and war then Marxism Festival 2018 is the place for you. Thousands of activists, campaigners, trade unionists, students, writers and academics will come together at over 130 different meetings.', 
   'Ticket prices', 'The festival is a not-for-profit event and we keep ticket prices as low as possible. But we do have to charge for entry to cover the high costs of the venues, creche, staffing and accommodation.',
   20, 30, 30, 55,
   10, 15, 15, 20,
   10, 15, 15, 20,
   'Marxism Festival 2018', 'PO BOX 74955', 'London', 'E16 9EJ', 'info@marxismfestival.org.uk', '020 7840 5620', 'Get in touch with us', 'Do not hesitate to drop us a line. Tel : 020 7840 5620',
   'Book before Wednesday 28 March for a £5 discount on your booking!', false, 500,
   'Marxism Festival 2018', 
   'https://www.youtube.com/watch?v=MQHlKuJhF9&autoplay=1', '', '', '',
   true, true, true, true, false, true, true, true,
   'admin', now());

-- SPEAKERS
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (1, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg', 'admin', now());
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (2, 'Sheila Coleman', 'Hillsborough', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'sheila-coleman-640x415.jpg', 'admin', now());
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (3, 'Ian Angus', 'Anti Racism Activist', 'Ian Angus is a socialist and ecosocialist activist in Canada. Angus is the editor of Climate and Capitalism.', 'Ian-Angus-640x415.jpg', 'admin', now());
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (4, 'Pat Mills', '2000AD Creator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'pat-mills-2000AD-640x415.jpg', 'admin', now());
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (5, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg', 'admin', now());
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (6, 'Maz Saleem', 'Anti Racism Activist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis aliquam omnis.', 'maz-saleem-640.jpg', 'admin', now());

insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 1, 0);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 2, 1);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 3, 2);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 4, 3);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 5, 4);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 6, 5);

-- THEMES
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (1, 'Corbyn', 'Jeremy Corbyn, the Labour Party and the fight for socialism',
	'Jeremy Corbyn&apos;s success at last year&apos;s general election shattered the Tories and transformed the political situation here in Britain. Meetings at Marxism Festival will debate the issues facing Corbyn and Labour and discuss how we can mobilise to bring about fundamental change.',
	'labour-corbyn-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (2, 'Racism',
	'Resisting the racist backlash and the rise of fascism across Europe',
	'Far right and fascist forces have grown across Europe and the bigoted presidency of Donald Trump adds to the instability across the globe.  Meanwhile hundreds of refugees continue to die as they flee war and persecution. At Marxism Festival we will discuss how best to respond to these challenges.',
	'racism-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (3, 'Marx',
	'#Marx200 Anniversary – was Marx right?',
	'Karl Marx was an anti-capitalist and revolutionary. But 200 years on from his birth are his ideas still relevant today? We will explore Marx&apos;s economic insights for a system in crisis as well as his method for understanding the world today.',
	'marx-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (4, 'Climate Change', 'Capitalism and climate change',
	'With a climate change denier in the White House and fossil fuel use locked into capitalism - how can we act to stop catastrophic climate change?  We will discuss how Marxist ideas help shed light on an understanding of nature, ecology and the environment.',
	'climate-change-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (5, 'Me Too', '#MeToo: challenging sexism and the system',
	'Headlines about the issue of sexual harassment have led to the #MeToo campaign with millions of women sharing their experiences.  There is a growing movement challenging ideas about gender and sexuality. But how can we build a collective response to the sexism structured into our society?',
	'MeToo-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (6, 'Imperialism', 'War, imperialism, the Middle East and Palestine',
	'From Syria to Palestine the Middle East is on fire – a terrible consequence of western colonialism and imperialism.  We will look at how war is endemic to capitalism, discuss the latest developments in the carve up of the world and crucially ask how we can organise to stop the bloodshed.',
	'imperialism-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (7, 'LGBT', 'Marxism, Trans politics and the fight for LGBT+ liberation',
	'There is an offensive against transgender people – with attacks from the right wing media and the tripling of transphobic hate crime in the last five years. Meetings will discuss the fight for LGBT+ liberation, how trans people have fought as part of the wider movement for sexual liberation, and why trans rights are a demand every socialist and trade unionist should support.',
	'trans-lgbt-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (8, 'Trump', 'Donald Trump, the US and resistance',
	'The election as US president of an openly misogynistic, transphobic bigot who built his campaign on racist scapegoating has driven those who want to challenge oppression out onto the streets. We will discuss developments in the US and the potential for resistance to take on Trump.',
	'Trump-image-360-x-240px.jpg', 'admin', now());
insert into theme (id, name, short_description, long_description, image_url, creator, date_created)
values (9, 'Class', 'Class, struggle and the trade unions today',
	'How can we resist the Tories offensive on working class people? Has the working class lost its power? How should we organise at work? And is there even a future of work or will robots take over? These are just some of the questions we will seek to address at Marxism Festival.',
	'class-struggle-image-360-x-240px.jpg', 'admin', now());

insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 1, 0);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 2, 1);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 3, 2);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 4, 3);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 5, 4);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 6, 5);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 7, 6);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 8, 7);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 9, 8);
