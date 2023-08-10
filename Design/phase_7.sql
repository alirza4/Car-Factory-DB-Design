create trigger Spare_Parts_not_zero before update on Spare_Parts
    for each row
    begin
        if (new.stock <= 0) then
            set new.stock = old.stock;
        else
            set new.stock = new.stock;
        end if;
    end;

create trigger Car_Orders_sold before update on Car_Orders
    for each row
begin
    if (select is_sold from Cars where id = new.VIN) then
        set new.VIN = null;
    else
        set new.VIN = new.VIN;
    end if;
end;