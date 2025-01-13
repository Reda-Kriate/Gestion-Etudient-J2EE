# Gestion des Étudiants et des Utilisateurs - Application Web J2EE

## Description du Projet
Cette application web J2EE est conçue pour gérer les étudiants et les utilisateurs en utilisant une architecture basée sur les servlets, JSP, JDBC, et le modèle DAO. Elle offre deux interfaces principales : 

1. **Interface Client** : 
   - Affichage de la liste des étudiants
   - Recherche d'un étudiant par ID
   - Ajout d'un nouvel étudiant
   - Suppression d'un étudiant par ID
   - Suppression de tous les étudiants

2. **Interface Admin** : 
   - Toutes les fonctionnalités de l'interface client
   - Gestion des utilisateurs, y compris :
     - Affichage des utilisateurs
     - Ajout de nouveaux utilisateurs ou administrateurs
     - Modification des utilisateurs existants
     - Suppression d'utilisateurs par ID
    
  3. **Authentification des Utilisateurs** :

    - Login : Permet aux utilisateurs de se connecter en utilisant leur Email de l'utilisateur et mot de passe.
    - Sign Up : Permet aux nouveaux utilisateurs de créer un compte avec des informations comme le nom d'utilisateur, Email de l'utilisateur et le mot de passe (seule l'admin qui peut        ajouter un autre admin)

## Technologies Utilisées
- **Langage de Programmation** : Java (POO)
- **Frameworks et Outils** :
  - Servlets et JSP
  - JDBC pour l'intéraction avec la base de données
- **Base de Données** : MySQL
- **Modèle Architecture** : Modèle DAO (Data Access Object)

## Fonctionnalités Clés
### Gestion des Étudiants (Interface Client)
- **Lister les étudiants** : Affiche tous les étudiants enregistrés.
- **Rechercher un étudiant par ID** : Permet de trouver un étudiant spécifique à l'aide de son ID.
- **Ajouter un étudiant** : Ajoute un nouveau étudiant avec des champs comme le nom, le prénom, et l'âge.
- **Supprimer un étudiant par ID** : Supprime un étudiant spécifique.
- **Supprimer tous les étudiants** : Supprime l'intégralité des étudiants.

### Gestion des Utilisateurs (Interface Admin)
- **Lister les utilisateurs** : Affiche tous les utilisateurs existants.
- **Ajouter un utilisateur** : Ajoute un nouvel utilisateur ou administrateur avec des informations comme le nom d'utilisateur, le mot de passe, et la fonction.
- **Modifier un utilisateur** : Met à jour les détails d'un utilisateur existant.
- **Supprimer un utilisateur par ID** : Retire un utilisateur spécifique de la base de données.

## Structure du Projet
Le projet est organisé selon les principes MVC (Modèle-Vue-Contrôleur) :
- **Modèle** : Classes DAO pour l'intéraction avec la base de données.
- **Vue** : Pages JSP pour l'interface utilisateur.
- **Contrôleur** : Servlets pour la logique applicative.

## Prérequis
- **Serveur d'application** : Apache Tomcat.
- **Base de données MySQL**


## Captures d'écran
<img width="1440" alt="code" src="https://github.com/user-attachments/assets/b107176c-1f06-4b8b-8418-d740c1ef5dfb" />
<img width="1440" alt="loginpage" src="https://github.com/user-attachments/assets/071e914f-b5a6-427d-905e-d3c595377e4a" />
<img width="1439" alt="adminhome" src="https://github.com/user-attachments/assets/fcffbcfb-a941-4fa3-95c8-aaed55ab9ffb" />
<img width="1440" alt="clienthome" src="https://github.com/user-attachments/assets/5ce1bd83-88fc-452f-9e77-9fad88fee42f" />
<img width="1440" alt="affichEtud" src="https://github.com/user-attachments/assets/f6c8d797-5b7e-45b3-8048-2913b83f6e64" />
<img width="1440" alt="affUtlis" src="https://github.com/user-attachments/assets/c687a953-ea44-4be3-8c9a-95ad019c219b" />
<img width="1440" alt="ajouterUtlis" src="https://github.com/user-attachments/assets/f4f52c7e-21d9-4a9d-858a-4669f8a763b8" />
<img width="1440" alt="modifUtlis" src="https://github.com/user-attachments/assets/35fb7ffd-8cd2-411f-a2cc-0542d55d5e4f" />







