//Table TVA

Create table TVA{
CodeTVA number (2) not null,
Taux number (3,1) not null,
constraint PK_TVA primary key(CodeTVA),
};

//Table CategorieClient

Create table catégorieclient{
	CodeCategorieClient 	number(2) 		not null,
	NomCategorieClient 		varchar(50) 	not null,
constraint PK_client 
				primary key(CodeClient)
};

//Table Client

Create table client{
	CodeClient   		number(5)   	not null,
	NomClient   		varchar(50)  	not null,
	ContactClient  		varchar(50)  	not null,
	NumeroRueClient  	varchar(6)   	not null,
	NomRueClient  		varchar(100) 	not null,
	CodePostalClient 	varchar(6)   	not null,
	VilleClient   		varchar(100)  	not null,
	EmailContactClient 	varchar(100)  	not null,
	NumeroTelClient  	char(10),
constraint PK_client 
				primary key(CodeClient)
};

//Table Agence
 
Create table agence{
	CodeAgence    	 	number(2)    not null,
	NomAgence  		 	varchar(50)  not null,
	NumeroRueAgence  	varchar(50)  not null,
	NomRueAgence  		varchar(6)   not null,
	CodePostalAgence 	char(5)   	 not null,
	VilleAgence   		varchar(6)   not null,
constraint PK_agence 
				primary key(CodeAgence)
};

//Table Catégorie

Create table categorie{
	CodeCategorie 		number(2) 		not null,
	NomCategorie 		varchar(50) 	not null
};

//Table produit

Create table produit{
	CodeProduit 		number(5) 		not null,
	CodeTVA 			number(2) 		not null,
	DenominationProduit varchar(50),
constraint PK_produit 
				primary key(CodeProduit),
Constraint FK_produit_TVA 
				foreign key (CodeTVA) 
				references TVA(CodeTVA)
};

//Table Commande

Create table commande{
	CodeCommande 		number(5) 		not null,
	CodeClient 			number(5) 		not null,
	DateCommande 		date,
constraint PK_commande 
				primary key(CodeCommande),
constraint FK_commande_client 
				foreign key (CodeClient) 
				references client(CodeClient)
};

//Table Facturation

{
CodeFacture number (6),
DateEmission date,
constraint PK_facturation primary key(CodeFacture),
};

//Table Transporteur

{
CodeTransporteur number(5),
NomTransporteur varchar(50),
constraint PK_Transporteur primary key (CodeTransporteur)
};

//Table livraison

Create table Livraison{
CodeLivraison number (5) not null,
CodeFacture number (6) not null,
CodeTransporteur number (5) not null,
constraint PK_livraison primary key(CodeLivraison),
constraint FK_livraison_facturation foreign key(CodeFacture) reference facturation(CodeFacture),
constraint FK_livraison_transporteur foreign key (CodeTransporteur) references transporteur(Codetransporteur)
};

//Table Delivrer

create table delivrer{
CodeCommande number(5),
CodeLivraison number(5),
constraint PK_delivrer primary key(CodeCommande,CodeLivraison),
constraint FK_delivrer_commande foreign key(CodeCommande) reference commande(CodeCommande),
constraint FK_delivrer_livraison foreign key (CodeLivraison) references livraison(CodeLivraison)
};

//Table Livrer
create table livrer{
CodeProduit number (5) not null,
CodeLivraison number (5)  not null,
Quantite number (5) not null,
constraint PK_livrer primary key(CodeProduit,CodeLivraison),
constraint FK_livrer_produit foreign key(CodeProduit) reference produit(CodeProduit),
constraint FK_livrer_livraison foreign key (CodeLivraison) references livraison(CodeLivraison)
};


//Table Payement

Create table payement
{
CodeTransaction number (5),
CodeFacture number (6),
DateTransaction date,
MontantTransaction number(8,2),
constraint PK_payement primarykey(CodeTransaction),
Constraint FK_Payement_Facturation foreign key (CodeTransaction) references Facturation(CodeFacture)
};



//Table avoirEnStock
create table avoirEnStock
{
CodeAgence number(2),
CodeProduit number(5),
Quantite number (5),
constraint PK_avoirEnStock primary key (CodeAgence,CodeProduit),
Constraint FK_avoirEnStock_Agence foreign key (CodeAgence) references Agence(CodeAgence),
Constraint FK_avoirEnStock_Produit foreign key (CodeProduit) references Produit(CodeProduit)
};

//Table Contenir
Create table contenir
{
CodeCommande number(5),
CodeProduit number(5),
Quantite number (5),
constraint PK_Contenir primary key (CodeCommande,CodeProduit),
Constraint FK_Contenir_Commande foreign key (CodeCommande ) references Commande(CodeCommande),
Constraint FK_Contenir_Produit foreign key (CodeProduit) references Produit(CodeProduit)
};

//Table Apparaitre

Create table apparaitre
{
SemestreAnnee number(1),
Annee char(4),
CodeProduit number (5),
PrixHT number(10,2),
constraint PK_Apparaitre primary key (SemestreAnnee,Annee,CodeProduit),
Constraint FK_Apparaitre_Catologue foreign key (SemestreAnnee) references Catalogue(SemestreAnnee),
Constraint FK_Apparaitre_Catologue foreign key (Annee) references Catalogue(Annee),
Constraint FK_Apparaitre_Produit foreign key (CodeProduit) references Produit(CodeProduit)
};


//Table Catalogue

create table catalogue
{
Annee char(4),
SemestreAnnee number(1),
constraint PK_Catalogue primary key (SemestreAnnee,Annee)
};
























