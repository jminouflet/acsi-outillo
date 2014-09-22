INSERT INTO catégorieclient(CodeCategorieClient,NomCategorieClient)
VALUES(01,'Entreprise de production');
INSERT INTO catégorieclient(CodeCategorieClient,NomCategorieClient)
VALUES(02,'Petits revendeurs');
INSERT INTO catégorieclient(CodeCategorieClient,NomCategorieClient)
VALUES(03,'Garagiste');


INSERT INTO client(CodeClient,NomClient,ContactClient,NumeroRueClient,NomRueClient,CodePostalClient,VilleClient,EmailContactClient,NumeroTelClient)
VALUES (00001,'Garagiste Leon','Henry DUPOND',16,'Rue De La Liberté',75015,'Paris','Leon.dupond@gmail.com',0146374895);
INSERT INTO client(CodeClient,NomClient,ContactClient,NumeroRueClient,NomRueClient,CodePostalClient,VilleClient,EmailContactClient,NumeroTelClient)
VALUES (00002,'ActiveSales','Alain OBRIJUAD',675,'Avenue Marius AUFAN',92150,'Levallois','alain.obrijuad@activessales.fr',0167492015);
INSERT INTO client(CodeClient,NomClient,ContactClient,NumeroRueClient,NomRueClient,CodePostalClient,VilleClient,EmailContactClient,NumeroTelClient)
VALUES (00003,'IPONGON','Meryl STREEP',48,'Rue Albert CAMUS',78570,'Andresy','meryl.streep@ipongon.fr',0767538015);


INSERT INTO agence(CodeAgence,NomAgence,NumeroRueAgence,NomRueAgence,CodePostalAgence,VilleAgence)
VALUES(01,'Agence Paris 20',76,'Rue De La Paix',75020,'Paris 20');
INSERT INTO agence(CodeAgence,NomAgence,NumeroRueAgence,NomRueAgence,CodePostalAgence,VilleAgence)
VALUES(02,'SC Agence Paris 14',56,'Rue Des Clos',75014,'Paris 14');
INSERT INTO agence(CodeAgence,NomAgence,NumeroRueAgence,NomRueAgence,CodePostalAgence,VilleAgence)
VALUES(03,'Agence Clichy',98,'Rue Saint Vincent',92110,'Clichy');


INSERT INTO categorie(CodeCategorie,NomCategorie)
VALUES (01,'Petit outillage');
INSERT INTO categorie(CodeCategorie,NomCategorie)
VALUES (02,'Accessoires pour automobiles');
INSERT INTO categorie(CodeCategorie,NomCategorie)
VALUES (03,'Machines outils');


INSERT INTO produit(CodeProduit,CodeTVA,DenominationProduit)
VALUES (00001,02,'Pneu 20 pouce');
INSERT INTO produit(CodeProduit,CodeTVA,DenominationProduit)
VALUES (00002,02,'Pneu 19 pouce');
INSERT INTO produit(CodeProduit,CodeTVA,DenominationProduit)
VALUES (00003,02,'Pneu 18 pouce');
INSERT INTO produit(CodeProduit,CodeTVA,DenominationProduit)
VALUES (00004,01,'Tournevis');
INSERT INTO produit(CodeProduit,CodeTVA,DenominationProduit)
VALUES (00005,02,'Phare');

Insert into TVA(CodeTVA,Taux)
VALUES (01,20.0);
Insert into TVA(CodeTVA,Taux)
VALUES (02,05.5);



INSERT INTO Commande(CodeCommande,CodeClient,DateCommende)
VALUES (00001,00003,02012014);
INSERT INTO Commande(CodeCommande,CodeClient,DateCommende)
VALUES (00002,00002,1009013);
INSERT INTO Commande(CodeCommande,CodeClient,DateCommende)
VALUES (00003,00002,05032014);
INSERT INTO Commande(CodeCommande,CodeClient,DateCommende)
VALUES (00004,00001,17112013);


INSERT INTO Facturation(CodeFacture,DateEmission)
VALUES (000001,01032014);
INSERT INTO Facturation(CodeFacture,DateEmission)
VALUES (000002,01022014);
INSERT INTO Facturation(CodeFacture,DateEmission)
VALUES (000003,01012014);


INSERT INTO Transporteur (CodeTransporteur,NomTransporteur)
VALUES (00001,'Francois-Eric LOUIS');
INSERT INTO Transporteur (CodeTransporteur,NomTransporteur)
VALUES (00002,'Jean MINOUFLET');
INSERT INTO Transporteur (CodeTransporteur,NomTransporteur)
VALUES (00003,'Boris LIBERKOWSKI');


INSERT INTO Livraison(CodeLivraison,CodeFacture,CodeTransporteur)
VALUES (00001,000001,01);
INSERT INTO Livraison(CodeLivraison,CodeFacture,CodeTransporteur)
VALUES (00002,000002,02);
INSERT INTO Livraison(CodeLivraison,CodeFacture,CodeTransporteur)
VALUES (00003,000003,03);


INSERT INTO delivrer(CodeCommande,CodeLivraison)
VALUES (00001,00001);
INSERT INTO delivrer(CodeCommande,CodeLivraison)
VALUES (00002,00002);
INSERT INTO delivrer(CodeCommande,CodeLivraison)
VALUES (00003,00003);

INSERT INTO Livrer(CodeProduit,CodeLivraison,Quantite)
VALUES(00001,00002,4);
INSERT INTO Livrer(CodeProduit,CodeLivraison,Quantite)
VALUES(00004,00002,2);
INSERT INTO Livrer(CodeProduit,CodeLivraison,Quantite)
VALUES(00005,00003,2);


INSERT INTO Payement(CodeTransaction,CodeFacture,DateTransaction,MontantTransaction)
VALUES (00001,000001,05032014,4000);
INSERT INTO Payement(CodeTransaction,CodeFacture,DateTransaction,MontantTransaction)
VALUES (00002,000001,05032014,1000);
INSERT INTO Payement(CodeTransaction,CodeFacture,DateTransaction,MontantTransaction)
VALUES (00003,000002,11022014,550);

INSERT INTO avoirEnStock(CodeAgence,CodeProduit,Quantite)
VALUES (01,00004,12);
INSERT INTO avoirEnStock(CodeAgence,CodeProduit,Quantite)
VALUES (02,00003,8);
INSERT INTO avoirEnStock(CodeAgence,CodeProduit,Quantite)
VALUES (03,00003,50);


INSERT INTO Contenir(CodeCommande,CodeProduit,Quantite)
VALUES (00001,00003,4);
INSERT INTO Contenir(CodeCommande,CodeProduit,Quantite)
VALUES (00001,00001,4);
INSERT INTO Contenir(CodeCommande,CodeProduit,Quantite)
VALUES (00001,00005,4);

INSERT INTO apparaitre(SemestreAnnee,Annee,CodeProduit,PrixHT)
VALUES (1,2013,00001,300);
INSERT INTO apparaitre(SemestreAnnee,Annee,CodeProduit,PrixHT)
VALUES (2,2013,00001,300);
INSERT INTO apparaitre(SemestreAnnee,Annee,CodeProduit,PrixHT)
VALUES (1,2014,00001,300);

INSERT INTO catalogue(Annee,SemestreAnnee)
VALUES (2013,1);
INSERT INTO catalogue(Annee,SemestreAnnee)
VALUES (2013,2);
INSERT INTO catalogue(Annee,SemestreAnnee)
VALUES (2014,1);








