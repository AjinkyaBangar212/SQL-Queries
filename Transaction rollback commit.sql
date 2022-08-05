use PB3;

begin try
      begin tran
	  insert into stud values (23,'Leena' , 511);
	  commit tran;
end try


begin catch 
       select ERROR_MESSAGE();
	   rollback tran;
end catch;






