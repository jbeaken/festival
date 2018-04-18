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
values (1, 'Ilan Pappé', 'Ilan Papp&eacute; is an anti-Zionist academic who has written books including <b>The Ethnic Cleansing of Palestine</b>. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>', ' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>', 
'Ilan-Pappe.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (2, 'Janet Alder', 'Janet Alder is the brother of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>', null, 
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
values (8, 'Moyra Samuels', 'Moyra is a member of the <b>Justice4Grenfell</b> campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>', null, 
'moyra-samuels.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (9, 'Alex Callinicos', 'Alex Callinicos, author of the <b>Revolutionary Ideas of Karl Marx</b> and will be discussing <b>Trump, tariffs and trade wars.</b>', null, 
'alex-callinicos.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (10, 'Brid Smith TD', 'Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>', null, 
'brid-smith.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (11, 'Jonathan Rosenhead', 'Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>', null, 
'jonathan-rosenhead.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (12, 'Eulália Reguant', 'Eulália is a MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>', null, 
'christine-buchholz.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (13, 'Nita Sanghera', 'Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>', 'As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.', 
'Nita-Sanghera.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (14, 'Mark Perryman', 'Mark is a founder of Philosophy Football and editor of <b>The Corbyn Effect</b>. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.', null, 
'mark-perryman.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (15, 'Naima Omar', 'Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>', null, 
'naima-omar.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (16, 'Alan Gibbons', 'Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his <b>Russian Revolution</b> trilogy.', 
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
values (18, 'Dave Randall', 'Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of <b>Sound System: The Political Power of Music.</b>', 
'Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of <b>Sound System: The Political Power of Music.</b>', 
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
values (23, 'Maria Styllou', 'Maria is a member of SEK in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>', null, 
'maria-styllou.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (24, 'Richard Boyd-Barrett TD', 'Richard is a TD in the Irish Parliament with People Before Profit. He’ll be part of a panel debating <b>The fight against austerity in Europe.</b>', null, 
'richard.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (25, 'Alfredo Saad-Filho', 'Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy', null, 
'alfredo-saad-filho.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (26, 'Judith Orr', 'Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>', null, 
'judith-orr.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (27, 'Iain Ferguson', 'Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book <b>Politics of the Mind: Marxism and Mental Distress.</b>', null, 
'iain-ferguson.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (28, 'Yuri Prasad', 'Yuri is a journalist on Socialist Worker and he’ll be launching his new book <b>A Rebel&apos;s Guide to Martin Luther King.</b>', null, 
'yuri-prasad.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (29, 'Sally Campbell', 'Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>', null, 
'sally.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (30, 'Ghayath Naisse', 'Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating Syria today.', null, 
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
