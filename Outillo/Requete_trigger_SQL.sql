Create or replace trigger TRG_client
On Client
Before insert or update
For each row

Begin
If:new.NomClient = old.NomClient then
dbms_output.put_line( 'Client déjà existant')
end if
end;

-------------------------------------------------
--
Create or replace trigger TRG_COMLIV
On Livraison
before insert or update
if:new.dateLivraison<(select DateCommande
						from Commande C
						join Delivrer D on C.CodeCommande=D.CodeCommande
						join Livraison L on D.CodeLivraison= L.new.DatdateLivraison) then
dbms_output.put_line('La date de livraison est avant la date de commande. Date incorrect !')
end if
end;	


