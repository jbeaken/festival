-- rabbitmqctl add_user marxism_rabbit password

-- mysqldump -uroot -padmin marxism  --no-create-db --ignore-table=marxism.booking --databases marxism > /home/git/marxism/src/main/etc/sql/marxism.sql

-- Version 1.1

alter table marxism_website_content add column apply_ticket_discount bit(1) not null;
alter table marxism_website_content add column discount_text varchar(300) not null;

update marxism_website_content set discount_text = 'Book before Wednesday 28 March for a £5 discount on your booking!';
update marxism_website_content set apply_ticket_discount = false;

-- Version 1.0.0
alter table booking add column is_actioned bit(1) not null;


use marxism;

alter table marxism_website add column discount_code_amount int(11) not null;
alter table marxism_website add column early_bird_discount_amount int(11) not null;
alter table marxism_website add column early_bird_discount_text varchar(500) not null;
alter table marxism_website add column show_early_bird_discount bit(1) not null;
alter table marxism_website drop column discount_amount;

update marxism_website set discount_code = 'DumpTrump';