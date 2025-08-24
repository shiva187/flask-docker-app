# 🚀 Flask + Docker Example

This project demonstrates how to run a **Python Flask web app inside Docker**.  
It is part of my Docker learning journey where I practice building, running, and managing containers.

---

## 🔹 What is in this project?
- A simple **Flask app** (`app.py`) that returns a message
- A **Dockerfile** that containerizes the app
- A **requirements.txt** to install dependencies
- Steps to build & run the container

---

## 🔹 Project Structure
flask-docker-app/

├── app.py # Flask application

├── requirements.txt # Python dependencies

├── Dockerfile # Build instructions

└── README.md #Documentation


---

## 🔹 Step 1: Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/flask-docker-app.git
cd flask-docker-app
```
## 🔹 Step 2: Build the Docker image
```bash
docker build -t flask-docker-app .
```
-t flask-docker-app → tags the image with a name

. → build context is current folder

## 🔹 Step 3: Run the container
```bash
docker run -d -p 5000:5000 flask-docker-app
```
-d → detached mode (runs in background)

-p 5000:5000 → maps port 5000 on host → port 5000 inside container

## 🔹 Step 4: Open in browser

Visit:  http://localhost:5000/

You should see :

```arduino
Hello Shiva, Flask is running inside Docker 🚀
```
## Explanatiom of Files :

### app.py

A minimal Flask app with one route (/).

Runs on host 0.0.0.0 so Docker can expose it.


### Requirements.txt

Tells Docker to install Flask during build.


### Dockerfile

Builds a lightweight Python environment

Installs Flask

Runs the app

