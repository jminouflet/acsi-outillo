//Table Categorie lient

Create table catégorieclient{
CodeCategorieClient number(2) not null,
NomCategorieClient varchar(50) not null,
constraint PK_client primary key(CodeClient)
};

//Table Client

Create table client{
CodeClient    number(5)   not null,
NomClient   varchar(50)  not null,
ContactClient  varchar(50)  not null,
NumeroRueClient  varchar(6)   not null,
NomRueClient  varchar(100) not null,
CodePostalClient varchar(6)   not null,
VilleClient   varchar(100)  not null,
EmailContactClient varchar(100)  not null,
NumeroTelClient  char(10),
constraint PK_client primary key(CodeClient)
};

//Table Agence
 
Create table agence{
CodeAgence    number(2)   not null,
NomAgence   varchar(50)  not null,
NumeroRueAgence  varchar(50)  not null,
NomRueAgence  varchar(6)   not null,
CodePostalAgence char(5)   not null,
VilleAgence   varchar(6)   not null,
constraint PK_agence primary key(CodeAgence)
};

//Table Catégorie

Create table categorie{
CodeCategorie number(2) not null,
NomCategorie varchar(50) not null
};

//Table produit

Create table produit{
CodeProduit number(5) not null,
CodeTVA number(2) not null,
DenominationProduit varchar(50),
constraint PK_produit primary key(CodeProduit),
Constraint FK_produit_TVA foreign key (CodeTVA) references TVA(CodeTVA)
};

//Table Commande

Create table commande{
CodeCommande number (5) not null,
CodeClient number (5) not null,
DateCommande date,
constraint PK_commande primary key(CodeCommande),
constraint FK_commande_client foreign key (CodeClient) references client(CodeClient)
};


//Table Delivrer

create table delivrer{
CodeCommande number(5),
CodeLivraison number(5),
constraint PK_delivrer primary key(CodeCommande,CodeLivraison),
constraint FK_delivrer_commande foreign key(CodeCommande) reference commande(CodeCommande),
constraint FK_delivrer_livraison foreign key (CodeLivraison) reference livraison(CodeLivraison)
};

//Table Livrer
create table livrer
{
CodeProduit number (5) not null,
CodeLivraison number (5)  not null,
Quantite number (5) not null,
constraint PK_livrer primary key(CodeProduit,CodeLivraison),
constraint FK_livrer_produit foreign key(CodeProduit) reference produit(CodeProduit),
constraint FK_livrer_livraison foreign key (CodeLivraison) reference livraison(CodeLivraison)
};

//Table TVA

Create table TVA{
CodeTVA number (2) not null,
Taux number (3,1) not null,
constraint PK_TVA primary key(CodeTVA)
};

//Table livraison

Create table Livraison{
CodeLivraison number (5) not null,
CodeFacture number (6) not null,
CodeTransporteur number (5) not null,
constraint PK_livraison primary key(CodeLivraison),
constraint FK_livraison_facturation foreign key(CodeFacture) reference facturation(CodeFacture),
constraint FK_livraison_transporteur foreign key (CodeTransporteur) reference transporteur(Codetransporteur)
};










