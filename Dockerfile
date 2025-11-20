# Imagen base
FROM python:3.10-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar requerimientos e instalarlos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar la app
COPY app.py .

# Exponer el puerto interno
EXPOSE 80

# Comando para ejecutar
CMD ["python", "app.py"]
