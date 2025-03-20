# print("ok")
import mysql.connector
# print("ok")

# Se connecter à la base de données
conn = mysql.connector.connect(
    host="localhost",        # Adresse du serveur de base de données (modifiez si nécessaire)
    user="root",  # Remplacez par votre nom d'utilisateur MySQL
    password="P@ssword123",  # Remplacez par votre mot de passe MySQL
    database="laplateforme",   # Nom de la base de données
    use_pure=True
)

print(conn)

# Créer un objet curseur pour exécuter des requêtes
cursor = conn.cursor()

# Requête SQL pour récupérer tous les étudiants
query = "SELECT * FROM etudiant"  # Assurez-vous que le nom de la table est correct
cursor.execute(query)
# print("ok")

# Récupérer tous les résultats de la requête
students = cursor.fetchall()

# Afficher les résultats
for student in students:
    print(student)

# Fermer la connexion
cursor.close()
conn.close()