--TRANSAÇÕES SEM USO DE PROCEDURES

set @@autocommit = 0;

START TRANSACTION;

start transaction;
	
	select idClientes, CONCAT(lname | minit) as name, cpf as identificação  from oficina natural join ordemServico;
	update ordemServico set status ='FINALIZADO' where numero= 1;
	
commit;

--TRANSAÇÃO COM PROCEDURE 

delimiter //

	create procedure sql_fail_oficina()
	begin 
		declare exit handler for sqlexception
		begin
			show errors limit 1;
			rollback;
			select 'Erro' as Warning;
		end;
		
		start transaction;
		
		select 
			@nextnumero := max(numero) + 1 as Next_numero
		from 
			oficina;
		
		insert into oficina VALUES (@nexnumero,'Nayara','Bernardo','3485', 'rua','2050');
											 
		commit;
		
	end//
	
delimiter ;
	
		

