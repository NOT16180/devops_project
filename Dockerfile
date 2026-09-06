FROM python:3.11-slim

WORKDIR /app

# Installation de FastAPI et du serveur web Uvicorn
RUN pip install --no-cache-dir fastapi uvicorn

# Copie de ton script dans le conteneur
COPY main.py .

# Commande exécutée au démarrage du conteneur
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
