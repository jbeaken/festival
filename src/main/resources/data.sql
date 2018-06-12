
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

-- More speakers
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (7, 'Sheila Coleman', 'Sheila is part of the Hillsborough Justice Campaign and will speak as part of a panel on Injustice and the British state', null, 
'sheila-coleman.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (8, 'Gareth Peirce', 'Gareth is a human rights lawyer who has working on many high profile cases involving miscarriages of justice. She will speak at a special panel meeting - <b>One year on: Grenfell and the fight for justice</b>', null, 
'gareth-peirce.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (9, 'Dave Ward', 'Dave is General Secretary of the post workers union CWU. He will join Ian Hodson from BFAWU and others to discuss Labour and fight against austerity', null, 
'dave-ward.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (10, 'Ian Hodson', 'Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>', null, 
'ian-hodson.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (11, 'Moyra Samuels', 'Moyra is a member of the Justice4Grenfell campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>', null, 
'moyra-samuels.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (12, 'Alex Callinicos', 'Alex Callinicos, author of the Revolutionary Ideas of Karl Marx and will be discussing <b>Trump, tariffs and trade wars.</b>', null, 
'alex-callinicos.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (13, 'Brid Smith', 'Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>', null, 
'brid-smith.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (14, 'Jonathan Rosenhead', 'Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>', null, 
'jonathan-rosenhead.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
<<<<<<< HEAD
values (12, 'Eulália Reguant', 'Eulália is a MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>', null, 
'christine-buchholz.jpg', 'admin', now());
=======
values (12, 'Eulália Reguant', 'Eulália is a former MP in Barcelona for the CUP, the anti-capitalist wing of the Catalan Independence movement. She will be discussing <b>Where next for Catalonia?</b>', null, 
'eulalia.jpg', 'admin', now());
>>>>>>> 9065167... Adding three replacement images for brid, richard and sally
=======
values (15, 'Ronnie Kasrils', 'Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC. Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma', null, 
'ronnie.jpg', 'admin', now());
>>>>>>> 223d844... Added new speakers

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (16, 'Nita Sanghera', 'Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>', 'As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.', 
'Nita-Sanghera.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (17, 'Mark Perryman', 'Mark is a founder of Philosophy Football and editor of The Corbyn Effect. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.', null, 
'mark-perryman.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (18, 'Naima Omar', 'Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>', null, 
'naima-omar.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (19, 'Alan Gibbons', 'Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his Russian Revolution trilogy.', 
'Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.', 
'alan-gibbons.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
<<<<<<< HEAD
values (17, 'Deidre O’Neill', 'Film makers Deidre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>', 
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co- directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.', 
=======
values (17, 'Deirdre O’Neill', 'Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>', 
=======
values (20, 'Deirdre O’Neill', 'Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>', 
>>>>>>> 223d844... Added new speakers
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.', 
>>>>>>> 9d8dccf... Adding sally campbell image
'deirdre-o-neill.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (21, 'Dave Randall', 'Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of Sound System: The Political Power of Music.', 
'Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of Sound System: The Political Power of Music.', 
'dave-randall.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (22, 'Talat Ahmed', 'Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>', null, 
'talat-ahmed.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (23, 'John Holmwood', 'John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>', null, 
'john-holmwood.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (24, 'Lucia Pradella', 'Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>', null, 
'Lucia-Pradella.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (25, 'Weyman Bennett', 'Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>', null, 
'weyman-bennett.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (26, 'Maria Styllou', 'Maria is a socialist activist in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>', null, 
'maria-styllou.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (27, 'Richard Boyd-Barrett TD', 'Richard is a TD in the Irish Parliament with People Before Profit. He&apos;ll be part of a panel debating <b>The fight against austerity in Europe.</b>', null, 
'richard-boyd-barrett.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (28, 'Alfredo Saad-Filho', 'Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy', null, 
'alfredo-saad-filho.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (29, 'Judith Orr', 'Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>', null, 
'judith-orr.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (30, 'Iain Ferguson', 'Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book Politics of the Mind: Marxism and Mental Distress.', null, 
'iain-ferguson.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (31, 'Yuri Prasad', 'Yuri is a journalist on Socialist Worker and he’ll be launching his new book A Rebel&apos;s Guide to Martin Luther King.', null, 
'yuri-prasad.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (32, 'Sally Campbell', 'Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>', null, 
'sally-campbell.jpg', 'admin', now());

insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
values (33, 'Ghayath Naisse', 'Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating <b>Syria today.</b>', null, 
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

INSERT INTO `meeting` VALUES (257,'admin','2018-06-01 10:39:21.000000',NULL,NULL,'THURSDAY',NULL,'Laura Miles','12.30','The fight for trans liberation',1),(258,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Martin Empson','12.30','What does the Anthropocene mean for revolutionary strategy?',1),(259,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Nadia Sayed','12.30','Workshop: Do we need violence to get real social change?',1),(260,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY','','Chin Chukwudinma','12.30','Africa and Imperialism today',1),(261,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'','14.30','Brexit & the Tory crisis: How can the Left gain?',1),(262,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'','14.30','Debate: Decolonising education: confronting the legacy of slavery & empire',1),(263,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Camilla Royle','14.30','Is science political?',1),(264,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'','14.30','What would socialism be like?',1),(265,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Ron Margulies','16.15','Turkey, the Kurds and the great powers',1),(266,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Jad Bouharoun','16.15','A Marxist history of early Islam',1),(267,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Lewis Nielsen','16.15','\"Workshop: \"\"Snowflake generation\"\" - who decides free speech?\"',1),(268,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Julie Sherry','16.15','What do we mean by class?',1),(269,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY',NULL,'Ken Olende','16.15','What was unique about the translatlantic slave trade?',1),(270,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'THURSDAY','The opening rally is a highlight of Marxism and will feature speakers including pro-choice activists from Ireland, anti-racist activists and campaigners from around the world. Don\'t miss it!','','19.00','Opening rally: Taking on Trump - resisting racism, oppression, war & austerity',1),(271,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Hassan Mahamdallie','10.00','30 years since Salman Rushdie: A turning point for British Muslims?',1),(272,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Jan Nielsen','10.00','The politics of food',1),(273,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Yunus Bakhsh','10.00','50 years on: How did the US lose in Vietnam?',1),(274,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Adrian Budd','10.00','Where is China going?',1),(275,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Joseph Choonara','10.00','Introduction to Capital course',1),(276,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Alan Kenny','10.00','Workshop: What would a revolution look like?',1),(277,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Charlie Kimber','11.45','50 years on: What is the role of Socialist Worker today?',1),(278,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Amy Leather','11.45','Why does capitalism love plastic?',1),(279,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Talat Ahmed','11.45','Black Thinkers Matter: who was Frantz Fanon?',1),(280,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Anne Alexander','11.45','The rise of Saudi Arabia and the political economy of the Gulf',1),(281,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Joseph Choonara','11.45','Introduction to Capital course (cont\'d)',1),(282,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Lucia Pradella','11.45','Italy and the fight against racism',1),(283,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Alex Callinicos','14.30','Trump, trade wars & real wars',1),(284,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Esme Choonara','14.30','Black thinkers matter:Angela Davis: Women, race and class',1),(285,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Patrick Nielsen','14.30','Workshop Fake News: does the Media control our minds?',1),(286,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','Martin is an author and activist and will be launching his new book discussing  Class Struggle and Change in the English Countryside.','Martin Empson','14.30','Booklaunch: Kill all the Gentlemen',1),(287,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Noel Halifax','14.30','What happened to Queer Theory?',1),(288,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Joseph Choonara','14.30','Introduction to Capital course (cont\'d)',1),(289,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Maxine Bowler','14.30','Marxism and religion: sigh of the oppressed?',1),(290,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Maria Styllou, Matt Collins','16.15','Debate: The fire last time: what is the legacy of 1968?',1),(291,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'','16.15','Who are the (Democratic) Football Lads Alliance?',1),(292,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Panel','16.15','Debate: From demolitions to social cleansing: the class war on housing',1),(293,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Peyman Jafari','16.15','Iran on the brink',1),(294,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Antony Hamilton','16.15','Workshop: The concept of race: What does it mean to be Black?',1),(295,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Celia Hutchison','16.15','Workshop: Where does sexism come from?',1),(296,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Martin Upchurch','16.15','What is the future with Artificial Intellingence and robots?',1),(297,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Dave Ward, Ian Hodson','19.00','Debate Labour and the fight against austerity',1),(298,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','Sheila Coleman from the Hillsborough Justice Campaign and other campaigners discuss Injustice and the British State','Sheila Coleman & others','19.00','Justice and the British State',1),(299,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','Ronnie Kasrils, served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela\'s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC. Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet','Ronnie Kasrils','19.00','South Africa after Zuma',1),(300,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'John Molyneux','19.00','Is there progress in art?',1),(301,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Dean Ryan','19.00','Gun and knife crime: why are young people killing each other?',1),(302,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,'Helen Salmon','19.00','The case against borders: why we oppose all immigration controls',1),(303,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','hosted by comedians Johnny Cochrane and Jasmine Fischer, what better way to gear up for Trump\'s visit?','','21.00','Culture: Trump Comedy Roast',1),(304,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford','','21.00','Culture: Freesia film screening',1),(305,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY','Following the meeting South Africa after Zuma with Ronnie Kasrils, freedom fighter in Apartheid South Africa, Marxism Festival is very pleased to host a special film trailer premier:The LONDON RECRUITS: A documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime.','','21.00','Culture: London recruits screening',1),(306,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'FRIDAY',NULL,NULL,'21.00','Culture: Live Theatre',1),(307,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'John Molyneux','10.00','Is Leninism authoritarian?',1),(308,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Phil Marfleet','10.00','Iraq: What happened next?',1),(309,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Sarah Bates','10.00','How did women win the vote?',1),(310,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Anna Gluckstein','10.00','Antisemitism and the far right today',1),(311,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Ameen Hadi','10.00','Who were the real Black panthers?',1),(312,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Colm Bryce','10.00','When students and workers united: May 1968',1),(313,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Sabby Sagall','10.00','Music and capitalism',1),(314,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Charlie Kimber','11.45','Revolutionary politics in the era of Corbyn',1),(315,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Moyra Samuels, Lucy Masoud','11.45','One year on: Grenfell & the fight for Justice',1),(316,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Michael Roberts','11.45','Marx\'s laws of motion in 30 minutes',1),(317,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'John Holmwood, Tahir Alam','11.45','Trojan Horse, Prevent and fighting Islamophobia',1),(318,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'John Parrington','11.45','What makes humans different from animals?',1),(319,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Gary McFarlane','11.45','Wakanda forever: Africa before colonisation',1),(320,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Kevin Doogan','11.45','Is the welfare state finished?',1),(321,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Andy Zebrowski & others','11.45','Is fascism back in Eastern Europe?',1),(322,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,NULL,'11.45','Blank',1),(323,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Michael Roberts','14.30','World economy: Is the long depression over?',1),(324,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Mark Perryman, Mark L Thomas','14.30','Debate: Corbyn, Labour & the future of British politics',1),(325,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Weyman Bennett','14.30','Fascism, the far right and racist populism today',1),(326,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Amy Leather ','14.30','#MeToo: fighting sexism & the system',1),(327,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'David Karvala & others','14.30','Debate: Catalonia & the crisis in Europe',1),(328,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Alex Kenny, Lisa Tunnell & others','14.30','Is another education possible?',1),(329,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Disabled People Against Cuts','14.30','Disability, oppression & resistance',1),(330,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Dee O\'Brien & Mike Wayne','14.30','Considering class: theory, culture and media in the 21st century',1),(331,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Mani Tanoh','14.30','Do British people benefit from the oppression of the Global South',1),(332,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,NULL,'14.30','Dylan Thomas: Poetry and politics',1),(333,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'John Bellamy Foster','16.15','Marxian theory & eco-revolution',1),(334,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Janet Alder, Brian Richardson','16.15','25 years on from Stephen Lawrence: Police, racism & the state',1),(335,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Charlie Kimber and special guests','16.15','Debate: What would a Labour government look like?',1),(336,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Iain Ferguson','16.15','Booklaunch: Politics of the mind: Marxism & mental distress',1),(337,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Brid Smith TD, Judith Orr','16.15','From Ireland to Trump: The fight for abortion rights',1),(338,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Alfredo Saad-filho, Raquel Varela','16.15','Brazil: Neoliberalism vs democracy',1),(339,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'','16.15','Gig work, the platform economy & class struggle',1),(340,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Michael Bradley','16.15','The lost revolution: 100 years on from the German revolution',1),(341,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Kurly','16.15','Spoken word workshop',1),(342,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Mani Tanoh','16.15','From African Marxism to neoliberalism',1),(343,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Alex Callinicos','19.00','Marx the revolutionary',1),(344,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Ghada Karmi, Tom Hickey','19.00','Palestine & the rhetoric of free speech',1),(345,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY','Uncover the radical history of the music that filled the dance floors, challenged oppression and became a scourge of the right.','Yuri Prasad & Liz Wheatley','19.00','A rebel\'s guide to disco',1),(346,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Patrick Vernon, Shirin Hirsch','19.00','Enoch Powell & rivers of blood: 50 years on',1),(347,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'McStriker, Pam Frache','19.00','Organising the unorganised',1),(348,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Sue Clayton','19.00','Film screening: Calais children: A Case to answer Q & A',1),(349,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'Tony Sullivan','19.00','Fashion & Capitalism',1),(350,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY',NULL,'','21.00','The Young Karl Marx film screening',1),(351,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SATURDAY','DJ\'s Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs in Student Central','DJ Liz Wheatley & Yuri Prasad','21.00','Rebel\'s Guide to Disco',1),(352,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Ghayath Naisse','10.00','Who is to blame for the horror in Syria?',1),(353,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Sue Caldwell','10.00','Do privilege theory & intersectionality help fight oppression?',1),(354,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Jess Edwards','10.00','How do we learn? Pedagogy & education today',1),(355,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'','10.00','Scotland, independence & the Left',1),(356,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Nike Johnson','10.00','Black Thinkers Matter: Malcolm X & the fight against racism',1),(357,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Tomas Tengely-Evans','10.00','1968: The Prague Spring and the rupturing of Stalinism',1),(358,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Sarah Ensor','10.00','Capitalism & extinction',1),(359,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Alex Callinicos','11.45','Gramsci & the art of politics',1),(360,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Mark L Thomas','11.45','Building in the unions & workplace',1),(361,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Naima Omar, Siema Iqbal, :Latifa Abouchakra','11.45','A woman\'s right to chooseIslamophobia & the hijab',1),(362,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Judith Orr','11.45','Are we heading for a new Cold War?',1),(363,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Brian Richardson','11.45','Who gets to be remembered: Should all the statues fall?',1),(364,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Fran Manning','11.45','Workshop: Is human nature a barrier to socialism?',1),(365,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','Author Alan Gibbons launches the second book of his Russian Revolution trilogy','Alan Gibbons','11.45','Booklaunch: Reason in revolt',1),(366,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Richard Donnelly','11.45','Workshop: What is the dialectic?',1),(367,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Ilan Pappé','14.00','Palestine in the era of Trump',1),(368,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Christine Buchholz, David Albrich & more','14.00','Resisting the far right & fascism in Europe',1),(369,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Nicola Field and others','14.00','Class, Pride and protest: Fighting for LGBT+ liberation',1),(370,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','From HE to FE, this year has seen massive attacks but also huge resistance. A panel of activists will be discussing where next in the fight to defend education','Nita Sanghera and others','14.00','Universities and colleges, neoliberalism & resistance',1),(371,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'','14.00','Dirty energy & capitalism: what\'s the real story',1),(372,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','A panel of NHS campaigners will come together on the NHS\' 70th birthday to debate how we can fight to save it. ','','14.00','NHS @ 70: How can we fight to defend it?',1),(373,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Dave Randall','14.00','Black voices, white visions: Music, racism and identity',1),(374,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Yuri Prasad','14.00','Booklaunch: A Rebel\'s Guide to Martin Luther King',1),(375,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Kieran Allen','14.00','Prospects for the socialist Left in Ireland',1),(376,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Naima Omar','14.00','Workshop: Marx & Alienation',1),(377,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Weyman Bennett','15.45','After Windrush: what does it mean to be British?',1),(378,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Naomi Wimbourne-Idrissi, Rob Ferguson','15.45','Corbyn, antisemitism & justice for Palestine',1),(379,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','Panos is editor of Socialist Worker\'s sister paper Workers\' Solidarity and will be looking at the experience Syriza in Greece and Left reformism in Europe. ','Panos Garganos','15.45','The experience of Left reformism in Europe',1),(380,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'John Bellamy Foster & others','15.45','This is America: resistance to Trump',1),(381,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Bea Kay','15.45','Islamophobia and child abuse: challenging the myths',1),(382,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Sheila McGregor','15.45','Social reproduction theory: capital & women\'s oppression',1),(383,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','From Catalonia to Scotland, independence struggles have raised questions for the Left. ','Hector Sierra','15.45','Marxism and the fight for national liberation',1),(384,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'','15.45','Workshop: Marxism & history',1),(385,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,NULL,'15.45','Resistance and racism in France',1),(386,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY','The closing rally will bring together activists and campaigners speaking on the fight for a different world.','','17.30','Closing rally: After Trump-  the battle for the future',1),(387,'admin','2018-06-01 10:39:22.000000',NULL,NULL,'SUNDAY',NULL,'Fred Hampton Appreciation Society','18.30','Marxism 2018 Afterparty',1);
INSERT INTO `theme_meetings` VALUES (7,257),(4,258),(1,259),(2,260),(1,261),(2,262),(1,264),(6,265),(6,266),(1,267),(9,268),(6,269),(2,271),(4,272),(6,273),(6,274),(3,275),(1,276),(1,277),(4,278),(2,279),(6,279),(6,280),(3,281),(2,282),(8,283),(2,284),(5,284),(7,287),(3,288),(3,289),(2,291),(6,293),(2,294),(5,295),(9,296),(1,297),(9,297),(1,297),(9,301),(2,301),(2,302),(1,307),(6,308),(5,309),(2,310),(2,311),(1,314),(1,314),(3,316),(2,317),(2,319),(6,319),(1,320),(2,321),(3,323),(1,324),(2,325),(5,326),(7,329),(6,331),(4,333),(2,334),(1,335),(7,336),(5,337),(9,339),(3,343),(6,344),(2,346),(9,347),(2,348),(6,352),(5,353),(2,353),(2,356),(4,358),(9,360),(2,361),(6,362),(2,363),(6,363),(1,364),(3,366),(6,367),(8,367),(2,368),(7,369),(4,371),(2,374),(1,375),(3,376),(2,377),(1,378),(6,378),(8,380),(2,381),(5,382),(3,384);