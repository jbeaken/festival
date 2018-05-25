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
   'Marxism 2018', 'A festival of socialist ideas', '5 - 8 July, central London', 'If you were excited by Jeremy Corbyn&apos;s election as Labour leader, horrified by Donald Trump, want to challenge racism and oppression, desire action over climate change or are looking for an alternative to austerity and war then Marxism Festival 2018 is the place for you. Thousands of activists, campaigners, trade unionists, students, writers and academics will come together at over 130 different meetings.', 
   'Ticket prices', 'The festival is a not-for-profit event and we keep ticket prices as low as possible. But we do have to charge for entry to cover the high costs of the venues, creche, staffing and accommodation.',
   20, 30, 30, 55,
   10, 15, 15, 20,
   10, 15, 15, 20,
   'Marxism Festival 2018', 'PO BOX 74955', 'London', 'E16 9EJ', 'info@marxismfestival.org.uk', '020 7840 5620', 'Get in touch with us', 'Do not hesitate to drop us a line. Tel : 020 7840 5620',
   'Book before Wednesday 28 March for a £5 discount on your booking!', false, 500,
   'Marxism Festival 2018', 
   'https://www.youtube.com/watch?v=MQHlKuJhF9&autoplay=1', '', '', '',
   true, true, true, true, true, true, true, true,
   'admin', now());

-- SPEAKERS
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (1, 'Ilan Pappé', 'Ilan Papp&eacute; is an anti-Zionist academic who has written books including The Ethnic Cleansing of Palestine. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>', ' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>', 
'Ilan-Pappe.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (2, 'Janet Alder', 'Janet Alder is the sister of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>', null, 
'janet-alder.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (3, 'John Bellamy Foster', 'John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>', null, 
'john-bellamy-foster.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (4, 'Ghada Karmi', 'Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>', null, 
'ghada-karmi.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (5, 'Michael Roberts', 'Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>', 'Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href="https://thenextrecession.wordpress.com">thenextrecession.wordpress.com</a>', 
'michael-roberts.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (6, 'Christine Buchholz', 'Christine Buchholz, MP for Die Linke in Germany, joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null, 
values (6, 'Christine Buchholz', 'Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null, 
'christine-buchholz.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (7, 'Ian Hodson', 'Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>', null, 
'ian-hodson.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (8, 'Moyra Samuels', 'Moyra is a member of the Justice4Grenfell campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>', null, 
'moyra-samuels.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (9, 'Alex Callinicos', 'Alex Callinicos, author of the Revolutionary Ideas of Karl Marx and will be discussing <b>Trump, tariffs and trade wars.</b>', null, 
'alex-callinicos.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (10, 'Brid Smith', 'Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>', null, 
'brid-smith.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (11, 'Jonathan Rosenhead', 'Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>', null, 
'jonathan-rosenhead.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
values (12, 'Eulália Reguant', 'Eulália is a MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>', null, 
'christine-buchholz.jpg', 'admin', now());
=======
values (12, 'Eulália Reguant', 'Eulália is a former MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>', null, 
'eulalia.jpg', 'admin', now());
>>>>>>> 9065167... Adding three replacement images for brid, richard and sally

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (13, 'Nita Sanghera', 'Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>', 'As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.', 
'Nita-Sanghera.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (14, 'Mark Perryman', 'Mark is a founder of Philosophy Football and editor of The Corbyn Effect. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.', null, 
'mark-perryman.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (15, 'Naima Omar', 'Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>', null, 
'naima-omar.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (16, 'Alan Gibbons', 'Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his Russian Revolution trilogy.', 
'Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.', 
'alan-gibbons.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
values (17, 'Deidre O’Neill', 'Film makers Deidre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>', 
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co- directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.', 
=======
values (17, 'Deirdre O’Neill', 'Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>', 
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.', 
>>>>>>> 9d8dccf... Adding sally campbell image
'deirdre-o-neill.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (18, 'Dave Randall', 'Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of Sound System: The Political Power of Music.', 
'Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of Sound System: The Political Power of Music.', 
'dave-randall.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (19, 'Talat Ahmed', 'Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>', null, 
'talat-ahmed.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (20, 'John Holmwood', 'John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>', null, 
'john-holmwood.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (21, 'Lucia Pradella', 'Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>', null, 
'Lucia-Pradella.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (22, 'Weyman Bennett', 'Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>', null, 
'weyman-bennett.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (23, 'Maria Styllou', 'Maria is a socialist activist in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>', null, 
'maria-styllou.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (24, 'Richard Boyd-Barrett TD', 'Richard is a TD in the Irish Parliament with People Before Profit. He&apos;ll be part of a panel debating <b>The fight against austerity in Europe.</b>', null, 
'richard-boyd-barrett.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (25, 'Alfredo Saad-Filho', 'Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy', null, 
'alfredo-saad-filho.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (26, 'Judith Orr', 'Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>', null, 
'judith-orr.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (27, 'Iain Ferguson', 'Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book Politics of the Mind: Marxism and Mental Distress.', null, 
'iain-ferguson.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (28, 'Yuri Prasad', 'Yuri is a journalist on Socialist Worker and he’ll be launching his new book A Rebel&apos;s Guide to Martin Luther King.', null, 
'yuri-prasad.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (29, 'Sally Campbell', 'Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>', null, 
'sally-campbell.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (30, 'Ghayath Naisse', 'Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating <b>Syria today.</b>', null, 
'ghayath-naisse.jpg', 'admin', now());

insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 1, 0);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 2, 1);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 3, 2);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 4, 3);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 5, 4);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 6, 5);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 7, 6);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 8, 7);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 9, 8);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 10, 9);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 11, 10);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 12, 11);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 13, 12);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 14, 13);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 15, 14);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 16, 15);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 17, 16);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 18, 17);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 19, 18);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 20, 19);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 21, 20);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 22, 21);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 23, 22);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 24, 23);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 25, 24);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 26, 25);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 27, 26);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 28, 27);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 29, 28);
insert into marxism_website_speakers (marxism_website_id, speakers_id, speaker_index) values (1, 30, 29);

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

INSERT INTO `meeting` VALUES (438,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Laura Miles','12.45','The fight for trans liberation',1),(439,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Martin Empson','12.45','What does the Anthropocene mean for revolutionary strategy?',1),(440,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Nadia Sayed','12.45','Workshop:Do we need violence to get real social change?',1),(441,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Chin Chukwudinma','12.45','Africa & Imperialism today',1),(442,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','','14.30','Brexit & the Tory crisis: How can the Left gain?',1),(443,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','','14.30','Debate: Decolonising educationn: confronting the legacy of slavery & empire',1),(444,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Maxine Bowler','14.30','Marxism & religion: sigh of the oppressed?',1),(445,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Camilla Royle','14.30','Is science political?',1),(446,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Ron Margulies','16.15','\"Turkey, the Kurds & \"\"the great powers\"\"\"',1),(447,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Jad Bouharoun','16.15','A Marxist History of Early Islam',1),(448,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Lewis Nielsen','16.15','\"Workshop: \"\"Snowflake generation\"\" - who decides free speech?\"',1),(449,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Julie Sherry','16.15','What do we mean by class',1),(450,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY','Ken Olende','16.15','What was unique about the translatlantic slave trade?',1),(451,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'THURSDAY',NULL,'19.00','Marxism 2018 opening rally',1),(452,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Hassan Mahamdallie','10.00','30 years since Salman Rushdie: A turnign point for British Muslims?',1),(453,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Jan Nielsen','10.00','The politics of food',1),(454,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Yunus Bakhsh','10.00','50 years on: How did the US lose in Vietnam?',1),(455,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Adrian Budd','10.00','Where is China going?',1),(456,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Joseph Choonara','10.00','Introduction to Capital course (1 of 3)',1),(457,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Alan Kenny','10.00','Workshop: What would a revolution look like?',1),(458,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Charlie Kimber','11.45','50 years on: What is the role of Socialist Worker?',1),(459,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Amy Leather','11.45','Why does capitalism love plastic?',1),(460,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Talat Ahmed','11.45','Black Thinkers matter: who was Frantz Fanon?',1),(461,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Anne Alexander','11.45','The rise of Saudi Arabia and the political economy of the Gulf',1),(462,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Joseph Choonara','11.45','Introduction to Capital course (2 of 3)',1),(463,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Lucia Pradella','11.45','Italy, racism and the rise of the far right',1),(464,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Alex Callinicos','14.30','Trump, trade wars & real wars',1),(465,'admin','2018-05-25 14:36:12.000000',NULL,NULL,'FRIDAY','Esme Choonara','14.30','Black thinkers matter:Angela Davis: Women, race and class',1),(466,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Patrick Nielsen','14.30','Workshop Fake News: does the Media control our minds?',1),(467,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Martin Empson','14.30','Booklaunch: Kill all the Gentlemen',1),(468,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Noel Halifax','14.30','What happened to Queer Theory?',1),(469,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Joseph Choonara','14.30','Introduction to Capital course (3 of 3)',1),(470,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY',NULL,'14.30','Blank',1),(471,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Maria Styllou, Matt Collins','16.15','Debate: The fire last time: what is the legacy of 1968?',1),(472,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Michael Bradley','16.15','Who are the FLA/DFLA?',1),(473,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Panel','16.15','Debate: From demolitions to social cleansing: the class war on housing',1),(474,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Peyman Jafari','16.15','Iran on the brink',1),(475,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Antony Hamilton','16.15','Workshop: The concept of race: What does it mean to be Black?',1),(476,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Celia Hutchison','16.15','Workshop Where does sexism come from?',1),(477,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Martin Upchurch','16.15','What future with AI and robots?',1),(478,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Dave Ward, Ian Hodson','19.00','Debate Labour and the fight against austerity',1),(479,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Sheila Coleman & others','19.00','Justice and the British State',1),(480,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Ronnie Kasrils','19.00','South Africa after Zuma',1),(481,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','John Molyneux','19.00','Is there progress in art?',1),(482,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Dean Ryan','19.00','Gun and knife crime: why are young people killing each other?',1),(483,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','Helen Salmon','19.00','The case against borders: why we oppose all immigration controls',1),(484,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','','20.30','Culture: Comedy night',1),(485,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','','20.30','Culture: Freesia film screening',1),(486,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'FRIDAY','','20.30','Culture: Live theatre',1),(487,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','John Molyneux','10.00','Is Leninism authoritarian?',1),(488,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Phil Marfleet','10.00','Iraq: What happened next?',1),(489,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Sarah Bates','10.00','How did women win the vote?',1),(490,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Anna Gluckstein','10.00','Antisemitism and the far right today',1),(491,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Ameen Hadi','10.00','Who were the real Black panthers?',1),(492,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Colm Bryce','10.00','When students and workers united: May 1968',1),(493,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Charlie Kimber','11.45','Revolutionaries in the era of Corbyn',1),(494,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Moyra Samuels, Lucy Masoud','11.45','One year on: Grenfell & the fight for Justice',1),(495,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Michael Roberts','11.45','Marx\'s laws of motion in 30 minutes',1),(496,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','John Holmwood & others','11.45','Trojan Horse, Prevent and fighting Islamophobia',1),(497,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','John Parrington','11.45','What makes humans different from animals?',1),(498,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Gary McFarlane','11.45','Wakanda forever: Africa before colonisation',1),(499,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Kevin Doogan ','11.45','Is the welfare state finished?',1),(500,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Andy Zebrowski & others','11.45','Is fascism back in Eastern Europe',1),(501,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Phil Knight','11.45','Culture: The legacy of Dylan Thomas',1),(502,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Michael Roberts','14.30','World economy: Is the long depression over?',1),(503,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Mark Perryman, Mark L Thomas','14.30','Debate: Corbyn, Labour & the future of British politics',1),(504,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Weyman Bennett','14.30','Fascism, the far right and racist populism today meeting',1),(505,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Eulalia Reguant, David Karvala & others','14.30','Debate: Catalonia & the crisis in Europe',1),(506,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Alex Kenny & others','14.30','Is another education possible?',1),(507,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','DPAC','14.30','Disability, opression & resistance',1),(508,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY',NULL,'14.30','Considering class: theory, culture and media in the 21st century',1),(509,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Mani Tanoh','14.30','Do British people benefit from the oppression of the Global South',1),(510,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Emma Davis','14.30','Booklaunch: A Rebel\'s guide to Alexandra Kollontai',1),(511,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','John Bellamy Foster','16.15','Marxian ecology vs ecological escapism: the revolutionary necessity of our time',1),(512,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Janet Alder','16.15','25 year on from Stephen Lawrence: Police, racism & the state',1),(513,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Special guests','16.15','Debate: What would a labour government look like?',1),(514,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Iain Ferguson','16.15','Booklaunch: Politics of the mind: Marxism & mental distress',1),(515,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Brid Smith TD, Judith Orr','16.15','The fight for abortion rights',1),(516,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Alfredo Saad-filho, Rauqel Vargas ','16.15','Brazil: Neoliberalism vs democracy',1),(517,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','','16.15','Gig work, the platform economy & class struggle',1),(518,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Michael Bradley','16.15','The lost revolution: 100 years on from the German revolution',1),(519,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Alex Callinicos','19.00','Marx the revolutionary',1),(520,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Ghada Karmi, Tom Hickey','19.00','Palestine & the rhetoric of free speech',1),(521,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Yuri Prasad & Liz Wheatley','19.00','A rebel\'s guide to Disco',1),(522,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','','19.00','Class, pride & protest',1),(523,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Patrick Vernon, Shirin Hirsch','19.00','Enoch Powell & rivers of blood: 50 years on',1),(524,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','McStrike, Fight for 15','19.00','Organising the unorganised',1),(525,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Sue Clayton','19.00','Film screening: Calais children: A Case to answer Q & A',1),(526,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','Tony Sullivan','19.00','Fashion & Capitalism',1),(527,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','','20.30','The Young Karl Marx film screening',1),(528,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SATURDAY','DJ Liz Wheatley','20.30','Rebel\'s Guide to Disco',1),(529,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Ghayath Naisse','10.00','Who is to blame for the horror in Syria?',1),(530,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Sue Caldwell','10.00','Do privilege theory & intersectionality help fight oppression?',1),(531,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Jess Edwards','10.00','How do we learn? Pedagogy & education today',1),(532,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY',NULL,'10.00','Scotland, independence & the Left',1),(533,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Nike Johnson','10.00','Malcolm X & the fight against racism',1),(534,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Tomas Tengely-Evans','10.00','1968: The Prague Spring',1),(535,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Sarah Ensor, Ian Rappel','10.00','Capitalism & extinction',1),(536,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Alex Callinicos','11.45','Gramsci & the art of politics',1),(537,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Mark L Thomas','11.45','Building in the unions & workplace',1),(538,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Naima Omar, Siema Iqbal','11.45','Islamophobia & the hijab',1),(539,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Judith Orr','11.45','Are we heading for a new Cold War?',1),(540,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Brian Richardson','11.45','Should all the statues fall?',1),(541,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Fran Manning','11.45','Workshop: Is human nature a barrier to socialism?',1),(542,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Alan Gibbons','11.45','Booklaunch: Russian revolution trilogy',1),(543,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Richard Donnelly','11.45','Workshop: What is the dialectic?',1),(544,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Ilan Pappé','14.00','Palestine in the era of Trump',1),(545,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Christine Buchholz, David Albrich & more','14.00','Resisting the far right & fascism in Europe',1),(546,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Amy Leather','14.00','#MeToo: fighting sexism & the system',1),(547,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Nita Sanghera','14.00','Universities, neoliberalism & resistance',1),(548,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Tina Louise Rothery, Suzanne Jeffrey','14.00','Dirty energy & capitalism',1),(549,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY',NULL,'14.00','NHS @ 70: How can we fight to defend it?',1),(550,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Dave Randall','14.00','Music, racism, identity',1),(551,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Mani Tanoh','14.00','From African Marxism to neoliberalism',1),(552,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Naima Omar','14.00','Workshop: Marx & Alienation',1),(553,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','','15.45','After Windrush: what does it mean to be British?',1),(554,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Naomi Wimbourne-Idrissi, Rob Ferguson','15.45','Corbyn, antisemitism & justice for Palestine',1),(555,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Panos Garganos','15.45','The experience of Left reformism in Europe',1),(556,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','John Bellamy Foster & others','15.45','Trump\'s America',1),(557,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Bea Kay','15.45','Islamophobia and child abuse: challenging the myths',1),(558,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Sheila McGregor','15.45','Social reproduction theory: capital & women\'s oppression',1),(559,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Hector Sierra','15.45','Marxism and the fight for national liberation',1),(560,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','Josh Hollands','15.45','Workshop: Marxism & history',1),(561,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY',NULL,'17.30','Marxism 2018 closing rally',1),(562,'admin','2018-05-25 14:36:13.000000',NULL,NULL,'SUNDAY','','18.30','Marxism 2018 Afterparty',1);
INSERT INTO `meeting_themes` VALUES (438,7),(439,4),(440,1),(441,2),(442,1),(443,2),(444,1),(446,6),(447,6),(448,1),(449,9),(450,6),(452,2),(453,4),(454,6),(455,6),(456,3),(457,1),(458,1),(459,4),(460,2),(460,6),(461,6),(462,3),(463,2),(464,8),(465,2),(465,5),(468,7),(469,3),(472,2),(474,6),(475,2),(476,5),(477,9),(478,1),(478,9),(478,1),(482,9),(482,2),(483,2),(487,1),(488,6),(489,5),(490,2),(491,2),(493,1),(493,1),(495,3),(496,2),(498,2),(498,6),(499,1),(500,2),(502,3),(503,1),(504,2),(507,7),(509,6),(510,5),(511,4),(512,2),(513,1),(514,7),(515,5),(517,9),(519,3),(522,7),(523,2),(524,9),(525,2),(529,6),(530,5),(530,2),(533,2),(535,4),(537,9),(538,2),(539,6),(540,2),(540,6),(541,1),(543,3),(544,8),(545,2),(546,5),(548,4),(552,3),(553,2),(554,1),(556,8),(557,2),(558,5),(560,3);
