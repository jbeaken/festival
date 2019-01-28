insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, after_party, discount_code)
values (1, true, 'UNCONFIRMED', NOW() - INTERVAL 1 DAY, "John", "Smith", "jsmith@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "WAGED", true, 'windrush18');
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, after_party, discount_code)
values (2, false, 'PAID', NOW() - INTERVAL 2 DAY, "Jane", "Totem", "jtotem@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "STUDENT_FE", true, 'windrush18');
insert into booking (id, is_actioned, status, date, firstname, lastname, email, telephone, address1, address2, town, postcode, country, ticket_type, ticket_pricing, after_party, discount_code)
values (3, true, 'UNCONFIRMED', NOW() - INTERVAL 1 HOUR, "Fred", "Letter", "fletter@gmail.com", "0733435343", "10 Filpot Street", null, "Preston", "P3 3ED", "United Kingdom", "FULL", "UNWAGED", false, 'student18');
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


insert into marxism_website (id, name, year, is_live,
    about_heading, about_line2, about_line3, about_text,
    pricing_heading, pricing_text,
    meeting_heading,
    email_subject, email_text,
    pricing_full_eventfe, pricing_full_eventhe, pricing_full_event_unwaged, pricing_full_event_waged,
    pricing_day_ticketfe, pricing_day_tickethe, pricing_day_ticket_unwaged, pricing_day_ticket_waged,
    pricing_flexi_ticketfe, pricing_flexi_tickethe, pricing_flexi_ticket_unwaged, pricing_flexi_ticket_waged,
    contact_address1, contact_address2, contact_address3, contact_address4, contact_email, contact_telephone, contact_heading, contact_line2,
    discount_text, apply_ticket_discount, discount_amount,
    theme_heading,
    video_url, audio_url, videos_url, gallery_url,
    show_booking, show_pricing, show_themes, show_about, show_speakers, show_contact, show_gallery, show_video, show_discount_code, show_culture_items, show_meeting_venues, show_meetings,
    discount_code,
    creator, date_created)
  values
  (1, '2019', 2019, true,
   'Marxism 2019', 'A festival of socialist ideas', '4 - 7 July, London', 'Capitalism is in crisis. Society is rapidly polarising between Left and Right. Marxism Festival 2019 is the place to debate how we can beat back the rise of racism, fascism & the far right. But thousands of people from around the world will also be discussing the alternative to the system that means chaos.',
   'Ticket prices', 'Advance tickets are much cheaper than those bought on the door, so if you book before 5pm on 4 July you&apos;ll save at least £10. The festival is a not-for-profit event and we keep ticket prices as low as possible. But we do have to charge for entry to cover the high costs of the venues, creche, staffing and accommodation.',
   'Meetings from previous Marxism 2018',
   'Your Marxism Booking Confirmation', '<p>You can follow us on <a href="https://www.facebook.com/events/1147513575415066/" target="_blank">facebook</a>,&nbsp;<a href="https://twitter.com/MarxismFestival" target="_blank">twitter</a> and <a href="https://www.instagram.com/marxism_festival/" target="_blank">instagram</a> for the latest updates about the event.</p><p>Marxism Festival starts on Thursday 4 July and finishes on Sunday 7 July.</p><p>Your ticket will be sent to you in the post nearer the event.</p><p>We will be announcing the exciting new London venue for this year’s event very soon - watch this space!</p><p>If you need any more information please get in touch with us on&nbsp;<a href="mailto:info@marxismfestival.org.uk" target="_blank">info@marxismfestival.org.uk</a>&nbsp;or call 020 7840 5620.</p>',
   20, 30, 30, 55,
   10, 15, 15, 20,
   10, 15, 15, 20,
   'Marxism Festival 2019', 'PO BOX 74955', 'London', 'E16 9EJ', 'info@marxismfestival.org.uk', '020 7840 5620', 'Get in touch with us', 'Do not hesitate to drop us a line. Tel : 020 7840 5620',
   'Book before Wednesday 17 April for a £5 discount on your booking!', true, 500,
   'Marxism Festival 2019',
   'https://www.youtube.com/watch?v=MQHlKuJhF9&autoplay=1', '', '', '',
   true, true, false, true, false, true, true, false, true, false, false, true,
   'student193',
   'admin', now());

-- ABOUT
insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (1, 'Booking', 'card',
'Advance tickets are cheaper - save money and book online here! You can also book on the phone by calling 0207 840 5620. Book <a href="#section_booking" class="read-more">here</a>',
null, null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (2, 'Where to find us', 'compass',
'We’re going to be announcing a brand new venue in London for Marxism 2019 very soon! Watch this space',
null, null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (3, 'Tickets', 'microphone',
'<strong>Advance bookings finish at 5pm on Wednesday 3 July.</strong> If you have not booked an advance ticket you can buy one at the Box Office at the venue which will be open throughout the festival',
null, null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (4, 'Disabled access', 'arrow-round-forward',
'We make every effort to ensure that Marxism is accessible for disabled people. Our venues are fully accessible.',
null, null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (5, 'Accommodation', 'key',
'We can generally arrange free accommodation in London during the event. This is usually &quot;crash pad&quot; type of accommodation on floors and in community centres.',
"<p>We can generally arrange free accommodation in London during the event. This is usually &quot;crash pad&quot; type of accommodation on floors and in community centres.</p><p>Please note that although we try our best to provide free accommodation to all who need it this is NOT guaranteed and we would encourage those who can to make their own arrangements.</p>.",
null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (6, 'Crèche', 'body',
'We provide a free crèche with a range of activities available for children of different ages up to 11 years. This must be booked by <strong>Monday 18 June.</strong>',
null, null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (7, 'Stalls', 'globe',
'Many campaigns and activist groups from around the country will be running stalls during the Marxism Festival. Check the website for updates',
null,
null,
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (8, 'Bookmarks bookshop', 'book',
'Bookmarks bookshop will be open every day during the Marxism Festival. They will have books by speakers at the event and books that complement meetings and courses.',
"<div class='row'><div class='col-sm-12'><h1 class='text-center font-lindham'>Liberate your mind</h1><p>Where do you go when you want to buy a book? A union-busting corporation or a socialist bookshop? Bookmarks is the largest socialist bookshop in Britain.</p><p>And we don&apos;t just sell from our shop in London, we go out and about to provide bookstalls at events across the country, from Tolpuddle to major demonstrations. We send books across the worldand offer a full mailorder service for individuals and trade unions.</p><p>Our range of books covers politics, economics, trade unionism, labour history, the environment, black struggle, women, culture, fiction, radical kid&apos;s books and much more. And we don&apos;t just sell books, we publish them too- books that answer the big questions that socialists and trade unionists are asking.</p><p>The massive anti-union booksellers like Amazon can offer the sorts of discounts smaller shops cannot match. But they do this by attacking their own workers, avoiding corporation tax and squeezing authors and publishers. That&apos;s not how we operate. And the major booksellers cannot match the guidance and expertise that our unionised staff provide.</p></div></div><hr /><div class='row'><div class='col-xs-3 social-container'><a class='twitter social-icon' target='_blank' title='Bookmarks on the web' href='https://bookmarksbookshop.co.uk'> <ion-icon name='ion-ios-world'></ion-icon></a></div><div class='col-xs-3 social-container'><a class='twitter social-icon' target='_blank' title='Bookmarks on Twitter' href='https://twitter.com/Bookmarks_books'> <ion-icon name='ion-social-twitter'></ion-icon></a></div><div class='col-xs-3 social-container'><a class='facebook social-icon' target='_blank' title='Bookmarks on Facebook' href='https://www.facebook.com/bookmarks.bookshop/'> <ion-icon name='ion-social-facebook'></ion-icon></a></div><div class='col-xs-3 social-container'><a class='instagram social-icon' target='_blank' title='Bookmarks on Youtube' href='https://www.youtube.com/channel/UCLhxs9hxW-q1Aq3TcQH7r_Q'> <ion-icon name='ion-social-youtube-outline'></ion-icon></a></div></div>",
"/img/modal/bookmarks-outside.jpg",
'admin', now());

insert into about (id, name, icon, text, modal_text, modal_image, creator, date_created)
values (9, 'About us', 'star',
'Marxism Festival  is a four day political festival of socialist ideas hosted by the <strong>Socialist Workers Party</strong>.',
"<h1 class='text-center font-lindham'>Marxism Festival is an annual event hosted by the Socialist Workers Party</h1><div class='row'><div class='col-xs-12'><p>The Marxism Festival has been taking place for over 30 years. Our aim is to provide a forum to discuss and debate left wing politics involving speakers and activists from different organisations as well as the SWP.</p><p>The festival brings together thousands of activists, trade unionists, students, writers and academics from across the globe to grapple with political questions of the day and discuss a way forward in campaigns and struggles.</p><p>Find your local <a href='http://socialistworker.co.uk/public/events' target='_blank'>SWP branch</a></p><p>Please visit our <a href='http://swp.org.uk' target='_blank'>website</a></p></div><h3 class='text-center'>Read Socialist Workers Party publications online</h3><div class='row'><div class='col-sm-3'><a href='https://socialistworker.co.uk' target='_blank'><img class='img-responsive img-cover' src='/img/modal/sw-cover.jpg'/></a></div><div class='col-sm-3'><a href='http://isj.org.uk/' target='_blank'><img class='img-responsive img-cover' src='/img/modal/isj-cover.jpg'/></a></div><div class='col-sm-3'><a href='http://socialistreview.org.uk/' target='_blank'><img class='img-responsive img-cover' src='/img/modal/rw-cover.jpg'/></a></div><div class='col-sm-3'><a href='https://www.youtube.com/user/swptvuk' target='_blank'><img class='img-responsive img-cover' src='/img/modal/swp-tv.gif'/></a></div></div><hr/><div class='row'><div class='col-xs-4 social-container'><a class='twitter social-icon' target='_blank' title='SWP on Twitter' href='https://twitter.com/socialistworker'><ion-icon name='logo-twitter'></ion-icon></a></div><div class='col-xs-4 social-container'><a class='facebook social-icon' target='_blank' title='SWP on Facebook' href='https://www.facebook.com/SocialistWorkerBritain/'><ion-icon name='logo-facebook'></ion-icon></a></div><div class='col-xs-4 social-container'><a class='instagram social-icon' target='_blank' title='SWP on Youtube' href='https://www.youtube.com/user/swptvuk'><ion-icon name='logo-youtube'></ion-icon></a></div></div>",
'/img/modal/swp3.jpg',
'admin', now());

insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 1, 0);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 2, 1);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 3, 2);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 4, 3);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 5, 4);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 6, 5);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 7, 6);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 8, 7);
insert into marxism_website_about (marxism_website_id, abouts_id, about_item_index) values (1, 9, 8);

-- VENUES
insert into venue (id, name, address, creator, date_created)
values (1, 'Student Central', 'Student Central', 'admin', now());

insert into venue (id, name, address, creator, date_created)
values (2, 'Friends Meeting House', 'Friends Meeting House', 'admin', now());

insert into venue (id, name, address, creator, date_created)
values (3, 'Institute of Education', 'Institute of Education', 'admin', now());

-- CAROUSEL ITEMS
insert into carousel_item (id, name, text, image_url, creator, date_created)
values (1, '1', 'Marxism Festival <span>2019</span>', 'imageUrl', 'admin', now());

insert into carousel_item (id, name, text, image_url, creator, date_created)
values (2, '2', 'A festival of <span>socialist ideas</span>', 'imageUrl', 'admin', now());

insert into carousel_item (id, name, text, image_url, creator, date_created)
values (3, '3', '4 - 7 July, London', 'imageUrl', 'admin', now());

insert into carousel_item (id, name, text, image_url, creator, date_created)
values (4, '4', 'Marxism Festival <span>2019</span>', 'imageUrl', 'admin', now());

insert into carousel_item (id, name, text, image_url, creator, date_created)
values (5, '5', 'A festival of <span>socialist ideas</span>', 'imageUrl', 'admin', now());

insert into carousel_item (id, name, text, image_url, creator, date_created)
values (6, '6', '4 - 7 July, London', 'imageUrl', 'admin', now());

insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 1, 0);
insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 2, 1);
insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 3, 2);
insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 4, 3);
insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 5, 4);
insert into marxism_website_carousel_items (marxism_website_id, carousel_items_id, carousel_item_index) values (1, 6, 5);

-- SPEAKERS
insert into speaker (id, name, short_description, long_description, creator, date_created)
values (1, 'Ilan Pappé', 'Ilan Papp&eacute; is an anti-Zionist academic who has written books including The Ethnic Cleansing of Palestine. He will be discussing <b>Opportunities and Dangers for Palestine in the Trump era.</b>', ' Ilan Pappe is the director of the European Centre for Palestine Studies at the University of Exeter and the author of twenty books, the last one is <b>The Biggest Prison on Earth: a History of the Israeli Occupation.</b>',
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (2, 'Janet Alder', 'Janet Alder is the sister of Christopher Alder who was killed in police custody. She will be speaking on <b>Black Lives Matter: Police, racism and the state.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (3, 'John Bellamy Foster', 'John Bellamy Foster is a Marxist ecologist and author. He will debate <b>Marxian ecology vs ecological escapism: the revolutionary necessity of our time.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (4, 'Ghada Karmi', 'Ghada Karmi is a Palestinian author, academic and activist. She will be discussing <b>Palestine and the rhetoric of free speech.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (5, 'Michael Roberts', 'Michael Roberts is a Marxist economist who writes regularly on the economy. He will be speaking on <b>The Long Depression and economic crisis</b>', 'Michael Roberts is a Marxist economist who has worked in the City of London for over 30 years. He is author of <b>The Great Recession - a Marxist view (Lulu, 2009)</b> and <b>The Long Depression (Haymarket 2016).</b><br/><br/>Forthcoming is <b>Marx 200: a modern view of Marx’s economics 200 years after his birth (Lulu 2018)</b> and jointly with G Carchedi, <b>The World in Crisis: empirical backing for Marx’s law of profitability (Haymarket 2018)</b>.<br/><br/>He blogs at: <a href="https://thenextrecession.wordpress.com">thenextrecession.wordpress.com</a>',
'admin', now());

<<<<<<< HEAD
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
values (6, 'Christine Buchholz', 'Christine Buchholz, MP for Die Linke in Germany, joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null, 
values (6, 'Christine Buchholz', 'Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null, 
=======
values (6, 'Christine Buchholz', 'Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null,
>>>>>>> dd76450... Adding firstname and lastname templating to email text
'christine-buchholz.jpg', 'admin', now());
=======
insert into speaker (id, name, short_description, long_description, creator, date_created)
values (6, 'Christine Buchholz', 'Christine Buchholz, an MP for Die Linke in Germany joins Petros Constantinou from KEERFA in Greece and David Albrich from Austria to discuss <b>The far right in Europe</b>', null,
'admin', now());
>>>>>>> a85ca56... Sync with puma now much working

-- More speakers
insert into speaker (id, name, short_description, long_description, creator, date_created)
values (7, 'Sheila Coleman', 'Sheila is part of the Hillsborough Justice Campaign and will speak as part of a panel on <b>Injustice and the British state</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (8, 'Gareth Peirce', 'Gareth is a human rights lawyer who has working on many high profile cases involving miscarriages of justice. She will speak at a special panel meeting - <b>One year on: Grenfell and the fight for justice</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (9, 'Dave Ward', 'Dave is General Secretary of the post workers union CWU. He will join Ian Hodson from BFAWU and others to discuss <b>Labour and fight against austerity</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (10, 'Ian Hodson', 'Ian, President of BFAWU, and strikers from McDonalds will be part of many panels debating <b>Corbyn, Labour and the future of British politics</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (11, 'Moyra Samuels', 'Moyra is a member of the Justice4Grenfell campaign and one year on from the Grenfell tragedy will be part of a panel on <b>Injustice and the British state.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (12, 'Alex Callinicos', 'Alex Callinicos, author of the Revolutionary Ideas of Karl Marx and will be discussing <b>Trump, tariffs and trade wars.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (13, 'Brid Smith', 'Brid is a TD in the Irish Parliament for People Before Profit. She has been heavily involved in the campaign to Repeal the 8th amendment, and will be joining a panel on <b>Abortion rights today.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (14, 'Jonathan Rosenhead', 'Jonathan is a member of Jewish Voice for Labour and will be joining a panel debating <b>Zionism, antisemitism and Palestine solidarity</b>', null,
'admin', now());

<<<<<<< HEAD
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
values (15, 'Ronnie Kasrils', 'Ronnie Kasrils served in the South African liberation movement all his adult life. He will speak on <b>South Africa after Zuma</b>', 'Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC.<br/><br/>Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma', 
>>>>>>> d9a4772... Themes now ready to show meetings, speakers.sql added
=======
values (15, 'Ronnie Kasrils', 'Ronnie Kasrils served in the South African liberation movement all his adult life. He will speak on <b>South Africa after Zuma</b>', 'Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC.<br/><br/>Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma',
>>>>>>> dd76450... Adding firstname and lastname templating to email text
'ronnie.jpg', 'admin', now());
>>>>>>> 223d844... Added new speakers
=======
insert into speaker (id, name, short_description, long_description, creator, date_created)
values (15, 'Ronnie Kasrils', 'Ronnie Kasrils served in the South African liberation movement all his adult life. He will speak on <b>South Africa after Zuma</b>', 'Ronnie Kasrils served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela&quot;s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC.<br/><br/>Internationally active with Palestine Solidarity and author of several books. Regards socialism as the only way to preserve humanity and the planet. He will speak on South Africa after Zuma',
'admin', now());
>>>>>>> a85ca56... Sync with puma now much working

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (16, 'Nita Sanghera', 'Nita is the UCU vice-President elect and will be joining a panel debating the <b>marketization of Higher Education</b>', 'As an access to HE lecturer, working at SCCB Bournville campus, Nita is familiar with the ever present spectre of the Conservatives marketisation of education, and whatever else they can get their hands on.<br/><br/>She is an active member of UCU, and has recently become Vice President elect.',
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (17, 'Mark Perryman', 'Mark is a founder of Philosophy Football and editor of The Corbyn Effect. He&apos;ll be debating <b>Corbyn and the future of British politics</b> with Mark L Thomas from the SWP.', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (18, 'Naima Omar', 'Naima is an activist with Stand Up to Racism and will lead a panel discussing <b>A woman’s right to choose: defending the Hijab.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (19, 'Alan Gibbons', 'Award winning writer and Labour Party member Alan Gibbons speaks on the second book of his Russian Revolution trilogy.',
'Alan is the author of some seventy books and was one of the organisers of the Campaign for the Book and the <b>Speak up for Libraries Coalition</b> that spearheaded the fight to defend the public library service.<br/><br/>Alan is a prolific speaker on education and public service. The final volumes of his Revolution trilogy charting the Russian Revolution are published in 2018.<br/><br/>He is a member of the Labour Party and is speaking in a personal capacity.',
'admin', now());

<<<<<<< HEAD
insert into speaker (id, name, short_description, long_description, image_url, creator, date_created)
<<<<<<< HEAD
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
=======
values (20, 'Deirdre O’Neill', 'Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>',
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.',
>>>>>>> dd76450... Adding firstname and lastname templating to email text
'deirdre-o-neill.jpg', 'admin', now());
=======
insert into speaker (id, name, short_description, long_description, creator, date_created)
values (20, 'Deirdre O’Neill', 'Film makers Deirdre O&#39;Neill and Mike Wayne will be leading a discussion on <b>Considering class: theory, culture and the media in the 21st century.</b>',
'Mike Wayne teaches film, television and media studies. He is the co-editor (with Deirdre O’Neill) of <b>Considering Class: Theory, Culture and the Media in the 21st Century</b> and co-director of with Deirdre O&#39;Neill of feature doc <b>The Acting Class.</b><br/><br/>Deirdre O&#39;Neill is a lecturer and filmmaker. Her new book is Film as a Radical Pedagogic tool. She is the co-coordinator of the <a href="http://www.insidefilm.org">Inside Film Project</a>.<br/><br/>She has co-directed (with Mike Wayne) two films <a href="http://listentovenezuela.info">Listen to Venezuela</a> and <a href="http://www.conditionoftheworkingclass.info">Condition of the Working Class</a>.<br/><br/>Their latest film <b>The Acting Class</b> is currently touring the country.',
'admin', now());
>>>>>>> a85ca56... Sync with puma now much working

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (21, 'Dave Randall', 'Dave Randall is a musician who has played with Faithless and Sinead O’Connor, and he is author of Sound System: The Political Power of Music.',
'Dave Randall is a musician, writer and activist.<br/><br/>He has toured the world playing guitar for Faithless, Sinead O&apos;Connor and others and is the author of Sound System: The Political Power of Music.',
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (22, 'Talat Ahmed', 'Talat is a lecturer and anti-racist activist based in Edinburgh. She will be leading a panel on <b>Decolonising education: confronting the legacy of slavery and empire</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (23, 'John Holmwood', 'John Holmwood is author of Countering Extremism in British Schools – the Truth About the Trojan Horse Affair, and he will join a panel to discuss <b>Islamophobia and education.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (24, 'Lucia Pradella', 'Lucia is an academic and activist in UCU. She’ll be speaking on <b>Italy, racism and the rise of the far right</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (25, 'Weyman Bennett', 'Weyman Bennett is the co-convenor of Stand Up to Racism. He will be analysing <b>Fascism, the far right and racist populism today</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (26, 'Maria Styllou', 'Maria is a socialist activist in Greece and was a part of the 1968 student movement at the LSE. She&apos;ll be discussing <b>The legacy of 1968</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (27, 'Richard Boyd-Barrett TD', 'Richard is a TD in the Irish Parliament with People Before Profit. He&apos;ll be part of a panel debating <b>The fight against austerity in Europe.</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (28, 'Alfredo Saad-Filho', 'Alfredo Marxist economist who writes on Latin America. He&apos;ll be launching his new book Brazil: Neoliberalism Versus Democracy', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (29, 'Judith Orr', 'Judith is an author and activist. She will be leading a discussion on <b>Are we heading for a new Cold War?</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (30, 'Iain Ferguson', 'Iain Ferguson is a social worker and part of Social Work Action Network. He will be launching his new book Politics of the Mind: Marxism and Mental Distress.', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (31, 'Yuri Prasad', 'Yuri is a journalist on Socialist Worker and he’ll be launching his new book A Rebel&apos;s Guide to Martin Luther King.', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (32, 'Sally Campbell', 'Sally is editor of Socialist Review  and leads a panel on <b>#MeToo: fighting everyday sexism</b>', null,
'admin', now());

insert into speaker (id, name, short_description, long_description, creator, date_created)
values (33, 'Ghayath Naisse', 'Ghayath is a Syrian socialist and in the context of war, imperialism and counter revolution he&apos;ll be debating <b>Syria today.</b>', null,
'admin', now());

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
insert into theme (id, name, short_description, long_description, creator, date_created)
values (1, 'Corbyn', 'Jeremy Corbyn, the Labour Party and the fight for socialism',
	'Jeremy Corbyn&apos;s success at last year&apos;s general election shattered the Tories and transformed the political situation here in Britain. Meetings at Marxism Festival will debate the issues facing Corbyn and Labour and discuss how we can mobilise to bring about fundamental change.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (2, 'Racism',
	'Resisting the racist backlash and the rise of fascism across Europe',
	'Far right and fascist forces have grown across Europe and the bigoted presidency of Donald Trump adds to the instability across the globe.  Meanwhile hundreds of refugees continue to die as they flee war and persecution. At Marxism Festival we will discuss how best to respond to these challenges.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (3, 'Marx',
	'#Marx200 Anniversary – was Marx right?',
	'Karl Marx was an anti-capitalist and revolutionary. But 200 years on from his birth are his ideas still relevant today? We will explore Marx&apos;s economic insights for a system in crisis as well as his method for understanding the world today.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (4, 'Climate Change', 'Capitalism and climate change',
	'With a climate change denier in the White House and fossil fuel use locked into capitalism - how can we act to stop catastrophic climate change?  We will discuss how Marxist ideas help shed light on an understanding of nature, ecology and the environment.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (5, 'Me Too', '#MeToo: challenging sexism and the system',
	'Headlines about the issue of sexual harassment have led to the #MeToo campaign with millions of women sharing their experiences.  There is a growing movement challenging ideas about gender and sexuality. But how can we build a collective response to the sexism structured into our society?',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (6, 'Imperialism', 'War, imperialism, the Middle East and Palestine',
	'From Syria to Palestine the Middle East is on fire – a terrible consequence of western colonialism and imperialism.  We will look at how war is endemic to capitalism, discuss the latest developments in the carve up of the world and crucially ask how we can organise to stop the bloodshed.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (7, 'LGBT', 'Marxism, Trans politics and the fight for LGBT+ liberation',
	'There is an offensive against transgender people – with attacks from the right wing media and the tripling of transphobic hate crime in the last five years. Meetings will discuss the fight for LGBT+ liberation, how trans people have fought as part of the wider movement for sexual liberation, and why trans rights are a demand every socialist and trade unionist should support.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (8, 'Trump', 'Donald Trump, the US and resistance',
	'The election as US president of an openly misogynistic, transphobic bigot who built his campaign on racist scapegoating has driven those who want to challenge oppression out onto the streets. We will discuss developments in the US and the potential for resistance to take on Trump.',
	'admin', now());
insert into theme (id, name, short_description, long_description, creator, date_created)
values (9, 'Class', 'Class, struggle and the trade unions today',
	'How can we resist the Tories offensive on working class people? Has the working class lost its power? How should we organise at work? And is there even a future of work or will robots take over? These are just some of the questions we will seek to address at Marxism Festival.',
	'admin', now());

insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 1, 0);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 2, 1);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 3, 2);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 4, 3);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 5, 4);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 6, 5);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 7, 6);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 8, 7);
insert into marxism_website_themes (marxism_website_id, themes_id, theme_index) values (1, 9, 8);


-- CULTURE ITEMS
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (1, 'Trump comedy roast', 'Trump comedy roast',
	'Hosted by comedians Johnny Cochrane, Don Biswas and Jasmine Fischer, what better way to gear up for Trump&apos;s visit than making jokes at his expense? <strong>Friday 8.30pm</strong>',
	null, 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (2, 'Young Karl Marx', 'The Young Karl Marx film screening',
	'Award-winning film by Raoul Peck, director of I Am Not Your Negro. It follows a discussion with Alex Callinicos on Marx: The Revolutionary. <strong>Saturday 7pm</strong>',
	'https://www.youtube.com/watch?v=hVTDoZLssg8', 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (3, 'Disco',
	'A Rebel&apos;s Guide to Disco ',
	'Author Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs. Saturday 7pm',
	null, 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (4, 'London recruits', 'London recruits',
	'A special Q & A and taster of a documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. <strong>Friday 8.45pm</strong>',
	null, 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (5, 'FREEDOM', 'FREEDOM',
	'FREEDOM is an immersive three-screen video installation that intersects footage of Martin Luther King with the struggle against racism today  <strong>All day Saturday & Sunday</strong>',
	'https://vimeo.com/239590930', 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (6, 'Freesia', 'Freesia film screening',
	'Freesia film screening -  An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. <strong>Friday 9pm</strong>',
	'https://www.youtube.com/watch?v=F6vL1wpaRZ0', 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (7, 'Calais Children', 'Calais Children: A Case to Answer film screening',
	'Director Sue Clayton for a Q&A with her award-winning film. <strong>Saturday 7pm</strong>',
	'https://www.youtube.com/watch?v=Pc5lrWKFPI8', 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (8, 'Black voices', 'Black voices, white visions: music, racism & identity',
	'Musician and author Dave Randall debates anti-racism and music. Sunday 2pm',
	null, 'admin', now());
insert into culture_item (id, name, short_description, long_description, video_url, creator, date_created)
values (9, 'Marxism After Party', 'Marxism After Party',
	'with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet. <strong>Sunday 6.30pm</strong>',
	'https://www.youtube.com/watch?v=I1naf38k7gs', 'admin', now());

insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 1, 0);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 2, 1);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 3, 2);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 4, 3);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 5, 4);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 6, 5);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 7, 6);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 8, 7);
insert into marxism_website_culture_items (marxism_website_id, culture_items_id, carousel_item_index) values (1, 9, 8);

INSERT INTO `meeting` VALUES (1,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','We have seen an explosion of trans awareness and activism over the last few years, but we\'ve also seen attempts by the bigots to stigmatise trans people. Shockingly, some on the Left have beeen hesistant to support trans people in their fight for liberation. Join author and activist Laura Miles to debate the arguments and discuss how we can build solidarity with trans resistance today. ','Malet Suite','Laura Miles','12.30','The fight for trans liberation',1),(2,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','Martin Empson, author of Land and Labour, will be discussing why the Anthropocene matters for climate activists','3E','Martin Empson','12.30','What does the Anthropocene mean for revolutionary strategy?',1),(3,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','3D','Nadia Sayed','12.30','Workshop: Do we need violence to get real social change?',1),(4,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','3C','Chin Chukwudinma','12.30','Africa and Imperialism today',1),(5,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','The Brexit crisis for the Tories continues to rumble on, with resignations, splits and rows a regular feature. However, Labour and Corbyn have been stuck on the issue, and it seems the Tories are being let off the hook. Join the debate on how the Left can agin from the Tory crisis.','','Mark Thomas','14.30','Brexit & the Tory crisis: How can the Left gain?',1),(6,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','The legacy of slavery and empire weighs heavy in education, from statues of Rhodes on campus to a narrow curriculum that excludes Black thinkers and writers. It is therefore no suprise that movements have sprung up to decolonise education. Join Talat Ahmed and Harjeevan Gill to debate how we can confront the legacy of slavery and empire.','Malet Suite','Talat Ahmed and Harjeevan Gill','14.30','Debate: Decolonising education: confronting the legacy of slavery & empire',1),(7,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','3E','Camilla Royle','14.30','Is science political?',1),(8,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','3D','Colm Bryce','10.00','When students and workers united: May 1968',1),(9,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','','Ron Margulies','16.15','Turkey, the Kurds and the great powers',1),(10,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','Malet Suite','Jad Bouharoun','16.15','A Marxist history of early Islam',1),(11,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','From Tommy Robinson to the \'Snowflake Generation\', the question of free speech is used by the right to attack the Left as being intolerant and totalitarian. Should we support absolute free speech? Should the far right be no platformed? Join this workshop to debate these questions and more. ','3E','Lewis Nielsen','16.15','Workshop: Snowflake generation? Who decides free speech?',1),(12,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','3D','Julie Sherry','16.15','What do we mean by class?',1),(13,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','','3C','Ken Olende','16.15','What was unique about the translatlantic slave trade?',1),(14,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'THURSDAY','The opening rally is a highlight of Marxism and will feature speakers including pro-choice activists from Ireland, anti-racist activists and campaigners from around the world. Don\'t miss it!','The Light ','','19.00','Opening rally: Taking on Trump - resisting racism, oppression, war & austerity',2),(15,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','The Rushdie affair is often seen as a turning point for modern islamophobia in Britain. Hassan Mahamdallie, editor of Critical Muslim, will be discussing the legacy of the Rushdie affair and its relevance today.','Upper Hall','Hassan Mahamdallie','10.00','30 years since Salman Rushdie: A turning point for British Muslims?',1),(16,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','Malet Suite','Jan Nielsen','10.00','The politics of food',1),(17,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3E','Yunus Bakhsh','10.00','50 years on: How did the US lose in Vietnam?',1),(18,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3D','Adrian Budd','10.00','Where is China going?',1),(19,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','3C','Alan Kenny','10.00','Workshop: What would a revolution look like?',1),(20,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','3B','Joseph Choonara','10.00','Introduction to Capital course',1),(21,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','Upper Hall','Charlie Kimber','11.45','50 years on: What is the role of Socialist Worker today?',1),(22,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','Malet Suite','Amy Leather','11.45','Why does capitalism love plastic?',1),(23,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3E','Talat Ahmed','11.45','Black Thinkers Matter: who was Frantz Fanon?',1),(24,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3D','Anne Alexander','11.45','The rise of Saudi Arabia and the political economy of the Gulf',1),(25,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3C','Lucia Pradella','11.45','Italy: between EU austerity & racist populists',1),(26,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','3B','Joseph Choonara','11.45','Introduction to Capital course (cont\'d)',1),(27,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Trump\'s chaotic regime has represented a crisis for liberal capitalism, not least through his threats of trade wars and real wars. Alex Callinicos will be debating his first 18 months in power.','The Venue','Alex Callinicos','14.30','Trump, trade wars & real wars',1),(28,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Angela Davis, civil rights and Black Panther activist, remains a figurehead and face of resistance around the world. The meeting will be discussing the life and politics of a revolutionary.','Upper Hall','Esme Choonara','14.30','Black thinkers matter:Angela Davis: Women, race and class',1),(29,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Malet Suite','Patrick Nielsen','14.30','Workshop Fake News: does the Media control our minds?',1),(30,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Martin is an author and activist and will be launching his new book discussing  Class Struggle and Change in the English Countryside.','3E','Martin Empson','14.30','Booklaunch: Kill all the Gentlemen',1),(31,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3D','Maxine Bowler','14.30','Marxism and religion: sigh of the oppressed?',1),(32,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3C','Noel Halifax','14.30','What happened to Queer Theory?',1),(33,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Joseph Choonara, author of A Reader\'s Guide to Capital, will be leading a specialcourse aimed at those aiming to read Marx\'s Capital. Timings may differ from those of other meetings, although the lunchbreak will remain unchanged. ','3C','Joseph Choonara','14.30','Introduction to Capital course (cont\'d)',1),(34,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','A special panel marking 50 years since 1968 will discuss it\'s relevance today. It was after all the year the world caught fire, from the student movement in France to the riots in Los Angeles.','The Venue','Maria Styllou, Matt Collins','16.15','Debate: The fire last time: what is the legacy of 1968?',1),(35,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','Upper Hall','Weyman Bennett','16.15','After Windrush: What does it mean to br British?',1),(36,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','We\'re joined by a panel of housing activists as well as special guests from the Labour Party and Green Party to discuss the fight for social housing.','Malet Suite','Panel','16.15','Debate: From demolitions to social cleansing: the class war on housing',1),(37,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3E','Peyman Jafari','16.15','Iran on the brink',1),(38,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','3D','Antony Hamilton','16.15','Workshop: The concept of race: What does it mean to be Black?',1),(39,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','3C','Celia Hutchison','16.15','Workshop: Where does sexism come from?',1),(40,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','We\'re joined by Dave Ward, General Secretary of CWU, and Ian Hodson, President of BFAWU, to debate the fight against austerity in the era of Corbyn.','3C','Martin Upchurch','16.15','What is the future with Artificial Intellingence and robots?',1),(41,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','The Venue','Dave Ward, Ian Hodson','19.00','Debate Labour and the fight against austerity',1),(42,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Sheila Coleman from the Hillsborough Justice Campaign and campaigning lawyer Gareth Peirce join us to discuss Injustice & the British State.','Upper Hall','Sheila Coleman & Gareth Peirce','19.00','Injustice and the British State',1),(43,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Ronnie Kasrils, served in the South African liberation movement all his adult life, was chief of intelligence in the ANCs military wing, organised operations from exile including that of the London Recruits, served in Mandela\'s government as deputy minister of Defence, followed by other portfolios to 2008 when he resigned and became active as a critic of the ANC. Internationally active with Palestine Solidarity and author of several books. This will be followed by a special taster of new film \'The London Recruits\', including Q & A witrh those involved.','Malet Suite','Ronnie Kasrils','19.00','South Africa after Zuma',1),(44,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3E','John Molyneux','19.00','Is there progress in art?',1),(45,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','A recent spate of killings has ignited debates about crime, its relationship to gangs, and the role of the police. Over 50 murder investigations have been opened in London 2018—and most victims are young and black. Much of the media blame the emergence of “postcode gangs” launching “turf wars” for the attacks. Dean Ryan, a youth worker in Hackeny, will be exploring the real reasons behind gun and knife crime. ','3D','Dean Ryan','19.00','Gun and knife crime: why are young people killing each other?',1),(46,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','','3C','Helen Salmon','19.00','The case against borders: why we oppose all immigration controls',1),(47,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','(https://www.facebook.com/events/167140864132481/) Hosted by comedians Johnny Cochrane and Jasmine Fischer, what better way to gear up for Trump\'s visit?','Gallery Bar','','21.00','Culture: Trump Comedy Roast',1),(48,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','(https://www.facebook.com/events/604582456584128/) A rare chance to see the award winning film by Raoul Peck, director of \'I am Not Negro\', which looks at how Karl Marx and Friedrich Engels became comrades and revolutionaries.','The Venue','','21.00','The Young Karl Marx film screening',1),(49,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'FRIDAY','Following the meeting South Africa after Zuma with Ronnie Kasrils, freedom fighter in Apartheid South Africa, Marxism Festival is very pleased to host a special film trailer premier:The LONDON RECRUITS: A documentary that tells the secret story of how young activists in Britain carried out daring missions in apartheid South Africa to subvert the regime. More info at https://www.londonrecruits.com/','Malet Suite','','21.00','Culture: London recruits screening',1),(50,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Upper Hall','John Molyneux','10.00','Is Leninism authoritarian?',1),(51,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Elvin Hall','Phil Marfleet','10.00','Iraq: What happened next?',3),(52,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Malet Suite','Sarah Bates','10.00','How did women win the vote?',1),(53,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','3C/D','Anna Gluckstein','10.00','Antisemitism and the far right today',1),(54,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Nunn','Ameen Hadi','10.00','Who were the real Black panthers?',3),(55,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Part of our series of meetings to discussing the legacy of 1968: the year the world caught fire. ','Clarke','','10.00','The lost revolution: 100 years on from the German revolution',3),(56,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Seminar room 802','Rob Behan','10.00','Russia and Putin today',3),(57,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','A socialist may be the next Prime Minister of Britain. This opens up huge possibilities, but also throws up big questions. Is revolution still relevant in the era of Corbyn? Join the debate with Charlie Kimber, editor of Socialist Worker newspaper.','The Venue','Charlie Kimber','11.45','Revolutionary politics in the era of Corbyn',1),(58,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','One year on from the Grenfell disaster, the fight for justice continues. Families are still yet to be permanently rehoused, while the companies and politicians responsible for Grenfell continue to walk free. This special panel - including Moyra Samuels from Justice4Grenfell and firefighter Lucy Masoud - will be debating how we can get justice for Grenfell.','Upper Hall','Moyra Samuels, Lucy Masoud','11.45','One year on: Grenfell & the fight for Justice',1),(59,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Michael Roberts is a Marxist economist (https://thenextrecession.wordpress.com/). He wil (try!) to discuss Marx\'s three laws of motion in just 30 minutes! See if he can do it.','Elvin Hall','Michael Roberts','11.45','Marx\'s laws of motion in 30 minutes',3),(60,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','The Trojan Horse scandal in Birmingham was an islamophobic attempt to stigmatise Muslim communities, and is emblematic of the systematic racism at the heart of the Prevent strategy. John Holmwood, who wrote a book on the topic will be joined by Tahir Alam, a former governor of one of the schools in question.','Malet Suite','John Holmwood, Tahir Alam, Nahella Ashraf','11.45','Trojan Horse, Prevent and fighting Islamophobia',1),(61,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Are humans different from animals? Should all species be treated equally? Does speciesism exist? Join socialist scientist John Parrington to discuss these questions and more. ','3C/D','John Parrington','11.45','What makes humans different from animals?',1),(62,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Nunn','Gary McFarlane','11.45','Wakanda forever: Africa before colonisation',3),(63,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Clarke','Kevin Doogan','11.45','Is the welfare state finished?',3),(64,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','In both Poland and Hungary, far right or fascist groups are either in government or have mobilised huge numbers on the streets. Antisemitism and islamophobia are at their core. Does this mean fascism is back in Eastern Europe? Polish and Hungarian anti-fascists will be flying over to discuss.','Seminar room 802','Andy Zebrowski & others','11.45','Is fascism back in Eastern Europe?',3),(65,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Seminar room 642','Sabby Sagall','11.45','Music and capitalism',3),(66,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','We keep being told that the world economy will begin to recover, and that the darkest financial days are behind us. Does capitalism have a way  out of the current economic crisis? Join Michael Roberts, Marxist economist, to discuss','The Venue','Michael Roberts','14.30','World economy: Is the long depression over?',1),(67,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','From Trump to Tommy Robinson, we\'ve seen a resurgence of the far right. Recently up to 15,000 supporters of Tommy Robinson marched in London.','Upper Hall','Weyman Bennett','14.30','Sounding the alarm: the alt-right, fascism & racist populism today',1),(68,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','The big debate:The Corbyn movement is at a crucial juncture. Socialist ideas are popular again, and the Tories are on the back foot. However it feels that since the election last year, there has been somewhat of a stalemate. What way forward for Corbyn and the fight for socialism. Mark Perryman, editor of the Corbyn moment, will be debating Mark L Thomas on where next?','Elvin Hall','Mark Perryman, Mark L Thomas','14.30','Debate: Corbyn, Labour & the future of British politics',3),(69,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Malet Suite','Amy Leather ','14.30','#MeToo: fighting sexism & the system',1),(70,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','The crisis in education continues to deepen, from teacher workloads to endless testing of children. Is another education system possible? Alex Kenny from the NEU executive will be joined by Paddy dé Cléir and Lisa Tunnell from the Young Teachers Network.','3C/D','Alex Kenny, Lisa Tunnell & Paddy De Cléir','14.30','Is another education possible?',1),(71,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','In many ways disabled people have been at the forefront of austerity. The government has rought in a culture that has treated those on benefits as scroungers and victims. But they\'re not - join Disabled People Against Cuts to hear their tales of resistance and discuss the fightback','Nunn','Disabled People Against Cuts','14.30','Disability, oppression & resistance',3),(72,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Clarke','','14.30','Considering class: theory, culture and media in the 21st century',3),(73,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Seminar room 802','Mani Tanoh','14.30','Do British people benefit from the oppression of the Global South',3),(74,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1670563616332870/) The crisis in Catalonia may have been slipped down the headlines, but it is by no means over. The recent resignation of Rajoy has opened up possibilities for the movemet to push back. And what does the independence crisis say about the nature of the European Union? Activists from the Catalonia including David Karvala will be flying over to join the debate.','Seminar room 642','David Karvala & others','14.30','Debate: Catalonia & the crisis in Europe',3),(75,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Bloomsbury','Phil Knight','14.30','Dylan Thomas: Poetry and politics',1),(76,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/633990273607227/) John Bellamy Foster is editor of Monthly Review in the US and is author of many books discussing the environment. He\'ll be discussing how why socialist politics must be at the heart of any real attempt to fight climate change and for a sustainable planet.','The Venue','John Bellamy Foster','16.15','Marxian theory & eco-revolution',1),(77,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Could a Labour government really end austerity? How would Corbyn defend himself against the inevitable attacks from the ruling class? What role would the movement on the streets and workplaces play? Join Charlie Kimber and special guests to discuss these questions and more. ','Upper Hall','Charlie Kimber and special guests','16.15','Debate: What would a Labour government look like?',1),(78,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Janet\'s brother Christopher was racially abused and killed in police custody in 1998. In the 20 years since she has been a fearless fighter for justice, and it recently emerged the police admitted to spying on her during the justice campaign. Hear her story.','Elvin Hall','Janet Alder, Brian Richardson','16.15','25 years on from Stephen Lawrence: Police, racism & the state',3),(79,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/1635619956491099/) The abortion campaign in Ireland was inspiring and involved millions of working class women fighting back against the bigotry of church and state. We\'re delighted to be hosting Brid Smith - a member of the Irish Parliament - alongside Abortion Wars author Judith Orr to discuss the fight for abortion rights today.','Malet Suite','Brid Smith TD, Judith Orr','16.15','From Ireland to Trump: The fight for abortion rights',1),(80,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Mental Distress has become one of the key “public issues” of the 21st century. According to the World Health Organisation, depression currently affects 350 million people worldwide. In his new book Politics of the Mind: Marxism and Mental Distress Iain Ferguson looks at the link between the economic and political system under which we live – capitalism – and the enormously high levels of mental distress which we see in the world today. At this meeting Iain will discuss how we can better understand mental distress using an historical and materialist Marxist approach as well as how new movements over the last few years have shaped responses to mental health issues.\n','3C/D','Iain Ferguson','16.15','Booklaunch: Politics of the mind: Marxism & mental distress',1),(81,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Alfred Saad Filho, author of a new book on Brazil, will be debating with Raquel Varela the current political situation in Brazil.','Nunn','Alfredo Saad-filho, Raquel Varela','16.15','Brazil: Neoliberalism vs democracy',3),(82,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Clarke','','16.15','Gig work, the platform economy & class struggle',3),(83,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Revolutions that are defeated are soon forgotten. Yet of all the upheavals after WWI, it was events in Germany that prompted British Prime Minister David Lloyd George to wrie \'The whole existing order, in its political, social and economic aspects, is questioned by the masses from one end of Europe to the other.\' Michael Bradley will be assessing the 100th anniversary of the Lost Revolution in Germany. ','Seminar room 802','Michael Bradley','16.15','The lost revolution: 100 years on from the German revolution',3),(84,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','We\'ll be joined by Mani Tanoh from Ghana and Willet Hanyani from Zimbabwe to discuss class struggle in Africa.','Seminar room 642','Mani Tanoh','16.15','From African Marxism to neoliberalism',1),(85,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Spoken word artist Kurly will be leading a particpatory workshop open to all. Get your rhymes ready!','Bloomsbury','Kurly','16.15','Spoken word workshop',3),(86,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/604582456584128/) This year marks the 200th anniversary of the birth of Karl Marx. Alex Callinicos, author of The Revolutionary Ideas of Karl Marx, will be reclaiming Marx as a revolutionary for today. Followed y a film screening of The Young Karl Marx.','The Venue','Alex Callinicos','19.00','Marx the revolutionary',1),(87,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','The pro-Palestine movement has been under fierce attack, from university campuses to the Labour Party. We\'ll be joined by Palestinian author and activist Ghada Karmi and Jewish Voice for Labour member Jonathan Rosenhead to debate the silencing of Palestine.','Upper Hall','Ghada Karmi, Jonathan Rosenhead','19.00','Palestine & the rhetoric of free speech',1),(88,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','Uncover the radical history of the music that filled the dance floors, challenged oppression and became a scourge of the right.','Lunchbox cafe','Yuri Prasad & Liz Wheatley','19.00','A rebel\'s guide to disco',1),(89,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','50 years ago, Enoch Powell made a inflamatory speech that whipped up racism towards migrants. He was sacked the next day, but over the years conservatives and racists have tried to rehabilitate his reputation and argue that his anti-migrant racism may have been well placed. We\'ll be joined by author and activist Patrick Vernon and Dr Shirin Hirsch to discuss the legacy of Powell\'s speech today.','Malet Suite','Patrick Vernon, Shirin Hirsch','19.00','Enoch Powell & rivers of blood: 50 years on',1),(90,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','The McStrike early this year was inspiring - low paid workers organising in the most difficult of conditions. A McStriker in the UK will be joined by Pam Frache from Fight for 15 in Canada to discuss the global fight to organise the unorganised.','3C/D','McStriker, Pam Frache','19.00','Organising the unorganised',1),(91,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','','Nunn','Tony Sullivan','19.00','Fashion & Capitalism',3),(92,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','(https://www.facebook.com/events/254956981941042/) This award winning film tells the story of the children left behind in Calais by the British and French Authorities. It follows a Q & A with director Sue Clayton ','Clarke','Sue Clayton','19.00','Film screening: Calais children: A Case to answer Q & A',3),(93,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','DJ\'s Yuri Prasad and Liz Wheatley follow their discussion on the radical history of disco with a night of music and DJs in Student Central','The Venue','DJ Liz Wheatley & Yuri Prasad','21.00','Rebel\'s Guide to Disco',1),(94,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SATURDAY','An award winning film that looks at Islamophobia in Britain today, Freesia follows the story of three families in Bradford. More info at https://www.imdb.com/title/tt4474930/','Malet Suite','','21.00','Culture: Freesia film screening',1),(95,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','Syrian socialist Ghayath Naisse will be leading a discussion on Who is to blame for the horror in Syria?','Upper Hall','Ghayath Naisse','10.00','Who is to blame for the horror in Syria?',1),(96,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','','Malet Suite','Sue Caldwell','10.00','Do privilege theory & intersectionality help fight oppression?',1),(97,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','NUT National Executive member Jess Edwards will be leading a discussion on how we learn, and how radical pedagogy can provide an alternative to the crisis in education.','3C/D','Jess Edwards','10.00','How do we learn? Pedagogy & education today',1),(98,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','','3E','','10.00','Scotland, independence & the Left',1),(99,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','','Nunn','Nike Johnson','10.00','Black Thinkers Matter: Malcolm X & the fight against racism',3),(100,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','','Clarke','Tomas Tengely-Evans','10.00','1968: The Prague Spring and the rupturing of Stalinism',3),(101,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','','Seminar room 802','Sarah Ensor','10.00','Capitalism & extinction',3),(102,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','The work of Antonio Gramsci is often hijacked by right wingers, but Gramsci\'s works are key to a Marxist understanding and method. Alex Callinicos will be reclaiming Gramsci for today. ','The Venue','Alex Callinicos','11.45','Gramsci & the art of politics',1),(103,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','It\'s been revealed that 2017 had the lowest strike figures since records began. What does this mean for trade union tactics today? How can we build in the workplace in period of low struggle? SWP Industrial organiser Mark L Thomas will be discussing these questions and more. ','Upper Hall','Mark L Thomas','11.45','Building in the unions & workplace',1),(104,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1840185549373229/) The hijab has been at the forefront of islamophobia, from the ban in France to racist attacks here. There is also some confusion within the Left, with many falling into pseudo-feminist arguments that criticise Islam. Siema Iqbal (AVOW), Naima Omar and Latifa Abouchakra (NEU member) will be discussing the fight to defend a woman\'s right to wear the hijab.','Malet Suite','Naima Omar, Siema Iqbal, :Latifa Abouchakra','11.45','A woman\'s right to chooseIslamophobia & the hijab',1),(105,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','Author and activist Judith Orr will be discussing the potential imperialist clashes in the era of Trump and Putin','3C/D','Judith Orr','11.45','Are we heading for a new Cold War?',1),(106,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','We\'ve recently seen an explosion of debate surrounding the legacy of slavery and empire, much of it centred on the statues of that era. Author and activist Brian Richardson will be debating whether they should all fall.','3E','Brian Richardson','11.45','Who gets to be remembered: Should all the statues fall?',1),(107,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Nunn','Fran Manning','11.45','Workshop: Is human nature a barrier to socialism?',3),(108,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','Author Alan Gibbons launches the second book of his Russian Revolution trilogy','Clarke','Alan Gibbons','11.45','Booklaunch: Reason in revolt',3),(109,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Seminar room 802','Richard Donnelly','11.45','Workshop: What is the dialectic?',3),(110,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/196048077711172/) Ilan Pappé is one of the most prominent anti-Zionist scholars in the world, and has written a number of celebrated books on the topic. Ilan will be discussing The day after: opportunities and dangers for Palestine in the era of Trump.','The Venue','Ilan Pappé','14.00','Palestine in the era of Trump',1),(111,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','(https://www.facebook.com/events/1936843079719073/). We\'ve recently seen the far right movement in Britain attempt to make the kind of breakthrough made by their European counterparts. This special panel willl bring together antifascists from across Europe to debate the fightback against the far right. Speakers include Christine Buchholz (MP in Germany), David Albrich (Austria) and Petros Constantinou (Greece)','Upper Hall','Christine Buchholz, David Albrich & more','14.00','Resisting the far right & fascism in Europe',1),(112,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','From HE to FE, this year has seen massive attacks but also huge resistance. A panel of activists will be discussing where next in the fight to defend education. Speakers include Nita Sanghera (UCU Vice-President elect) and UCU activists.','Malet Suite','Nita Sanghera, Josh Hollands','14.00','Universities and colleges, neoliberalism & resistance',1),(113,'admin','2018-06-29 11:52:15.000000',NULL,NULL,'SUNDAY','A special panel will be discussing Class, Pride & Protest: the fight for LGBT+ Liberation. Speakers include Nicola Field (Lesbians and Gays Support the Miners), Charlie Kiss (Trans activist), Peter Purton (author of Trade Unions & LGBT Rights)  & Edward Sesange (Diamond African LGBTI Group).','3C/D','Nicola Field and others','14.00','Class, Pride and protest: Fighting for LGBT+ liberation',1),(114,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','A panel of NHS campaigners will come together on the NHS\' 70th birthday to debate how we can fight to save it. ','3E','Karen Reissman','14.00','NHS @ 70: How can we fight to defend it?',1),(115,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','Musician and author Dave Randall  will be leading a discussion on the anti-racist legacies of music. Dave has toured the world playing with Faithless and Sinead O\'Connor.','Nunn','Dave Randall','14.00','Black voices, white visions: Music, racism and identity',3),(116,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','Suzanne Jeffrey will be joined by anti-fracking activists to discuss how dirty enegry is tied into capitalism, and how we can build a movement to take it on.','Clarke','Suzanne Jeffrey & others','14.00','Dirty energy & capitalism: what\'s the real story',3),(117,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','On the 50th anniversary of the assassination of Martin Luther King, politicians will queue to pay their respects. They will smother his memory with praise but none will acknowledge the truth - that King was a radical who wanted a complete transformation of society. Where in their vision is the King who stood out against the Vietnam War, who pledged to organise a poor people\'s march on Washington and who mounted a devastating critique of capitalism?\nWhat about the King who talked of revolution and who the FBI labelled \"the most dangerous Negro in America\"? Where is the King who was gunned down in Memphis while supporting striking workers? Author & journalist Yuri Prasad will be discussing King\'s radical legacy.','Seminar room 802','Yuri Prasad','14.00','Booklaunch: A Rebel\'s Guide to Martin Luther King',3),(118,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','From the abortion referendum to the water charges movement, Ireland has seen profound struggles for social change. Richard Boyd-Barrett, member of the Irish Parliament, will be discussing the prospects for the socialist Left in Ireland. ','Seminar room 642','Richard Boyd Barrett TD','14.00','Prospects for the socialist Left in Ireland',3),(119,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Bloomsbury','Naima Omar','14.00','Workshop: Marx & Alienation',1),(120,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','The Windrush scandal has exposed the racism at the heart of the British state, and has revealed the true nature of the \'hostile environment\'. It has also raised questions of \'good\' migrants and \'bad\' migrants, and what it means to be \'British\'. Join Weyman Bennett to debate these questions and more.','The Venue','','15.45','From the Football Lads Alliance to Tommy Robinson: the far right on the march',1),(121,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','The Labour right and supporters of Israel have smeared the Left and pro-Palestine movement as being antisemitic. While of course any instance of antisemitism must be vigorously opposed, we can not allow the right to use false smears to silence criticism of Israel and support for Palestine. Naomi Wimbourne-Idrissi from Jewish Voice for Labour and Rob Ferguson will be joined by other activists to discuss the politics behind the smears, and how we can counter them.','Upper Hall','Naomi Wimbourne-Idrissi, Rob Ferguson, Salma Karmi-Ayyoub','15.45','Corbyn, antisemitism & justice for Palestine',1),(122,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','','Malet Suite','Joseph Choonara, John Kelly','15.45','Debating Trotskyism in Britain',1),(123,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','Panos is editor of Socialist Worker\'s sister paper Workers\' Solidarity and will be looking at the experience Syriza in Greece and Left reformism in Europe. ','3C/D','Panos Garganos','15.45','The experience of Left reformism in Europe',1),(124,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','John Bellamy Foster is editor of Monthly Review in the US. He\'ll be joining a panel discussing how resistance has characterized Trump\'s first few years in power. ','3E','John Bellamy Foster & others','15.45','This is America: resistance to Trump',1),(125,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','','Nunn','Bea Kay','15.45','Islamophobia and child abuse: challenging the myths',1),(126,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','','Clarke','Sheila McGregor','15.45','Social reproduction theory: capital & women\'s oppression',3),(127,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','From Catalonia to Scotland, independence struggles have raised questions for the Left. ','Seminar room 802','','15.45','Film: Martin Luther King: Workers and the civil rights movement',3),(128,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','New to Marxism Festival this year, the workshops series will be addressing key questions for anyone new to Marxist politics. Including group discussion and participation, these workshop provide a great opportunity to ask those questions you\'ve always wanted to ask. ','Seminar room 642','Denis Godard','15.45','Resistance and racism in France',3),(129,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','','Bloomsbury','Hector Sierra','15.45','Marxism & the fight for national liberation',1),(130,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','The closing rally will bring together activists and campaigners speaking on the fight for a different world.','The Light ','','17.30','Closing rally: After Trump-  the battle for the future',2),(131,'admin','2018-06-29 11:52:16.000000',NULL,NULL,'SUNDAY','with music from the Fred Hampton Appreciation Society an eight-piece band based in north-west London who make music to move your head, heart and feet','The Venue','Fred Hampton Appreciation Society','18.30','Marxism 2018 Afterparty',1);

INSERT INTO `theme_meetings` VALUES (7,1),(4,2),(1,3),(2,4),(1,5),(2,6),(1,8),(6,9),(6,10),(1,11),(9,12),(6,13),(2,15),(4,16),(6,17),(6,18),(1,19),(3,20),(1,21),(4,22),(2,23),(6,23),(6,24),(2,25),(3,26),(8,27),(2,28),(5,28),(3,31),(7,32),(3,33),(2,35),(6,37),(2,38),(5,39),(9,40),(1,41),(9,41),(9,45),(2,45),(2,46),(1,50),(6,51),(5,52),(2,53),(2,54),(1,57),(1,57),(3,59),(2,60),(2,62),(6,62),(1,63),(2,64),(3,66),(2,67),(1,68),(5,69),(7,71),(6,73),(4,76),(1,77),(2,78),(5,79),(7,80),(9,82),(3,86),(6,87),(2,89),(9,90),(2,92),(6,95),(5,96),(2,96),(2,99),(4,101),(9,103),(2,104),(6,105),(2,106),(6,106),(1,107),(3,109),(6,110),(8,110),(2,111),(7,113),(4,116),(2,117),(1,118),(3,119),(2,120),(1,121),(6,121),(8,124),(2,125),(5,126),(3,128);
