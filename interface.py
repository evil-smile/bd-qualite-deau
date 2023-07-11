import streamlit as st
from mysql.connector import Error
import mysql.connector

# creation de la classe qui contiendra les informations de ma base de donnees

class WaterQuality:
    def __init__(self):
        self.ph_value = st.number_input("Valeur du PH ", min_value=0.00, max_value=14.00, step=0.55)
        self.hardness = st.number_input(" valeur du hardness")
        self.solids = st.number_input("valeur du solid")
        self.chroramine = st.number_input("veleur chroramines")
        self.sulfate = st.number_input('valeur du sulfate')
        self.conductivity = st.number_input('valeur de la conductivite')
        self.organic_carbone = st.number_input('valeur en carbone organique')
        self.trihalomethane = st.number_input("valeur du trihalomethane")
        self.turbidity = st.number_input("valeur de la turbidite")
        self.probability = st.number_input("valeur de la probabilite")

    def enregistrer(self):
        try :
            connection = mysql.connector.connect(host='localhost',
                                                 database="qualite d'eau",
                                                 user='root')
            if connection.is_connected():
                cursor = connection.cursor()

                # recuperer la valeur du ID insere dans la base de donnees
                cursor.execute("SELECT MAX(id) FROM water_quality")
                result = cursor.fetchone()
                max_id = result[0]

                # inserer les information de l'utilisateur dans la base de donnees
                sql = "INSERT INTO water_quality (id, pH_value, Hardness, Solids, Chloramines, Sulfate, Conductivity, Organic_carbon, Trihalomethanes, Turbidity, Porbability)\
                     VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
                val = (max_id+1, self.ph_value, self.hardness, self.solids, self.chroramine, self.sulfate, self.conductivity, self.organic_carbone, self.trihalomethane, self.turbidity, self.probability)
                cursor.execute(sql, val)
                connection.commit()
                st.write("les informations ont bien ete enregistrer dans la base de donnees")
        except Error as e:
            print('Erreur de connexion', e)

        finally:
            if connection.is_connected():
                cursor.close()
                connection.close()
                st.write("la connection a la base de donnees a bien ete fermee")


affiche = WaterQuality()

if st.button('Soumettre'):
    affiche.enregistrer()