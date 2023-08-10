alter table Cars add column
    is_sold boolean default false;

update Cars as C set is_sold = true
        where exists(select Id from Car_Orders where VIN = C.id);


start transaction;

insert into Car_Orders (VIN, customer_nid) values (44422413,3060609632);
update Cars set is_sold = true where VIN = '44422413';

commit;

start transaction;

insert into Car_Orders (VIN, customer_nid) values (44422413,3060609632);
insert into Spare_Part_Orders (spid, customer_nid) values (4,'3060609633');
update SparePart set stock = stock - 1 where id = 1;

commit;