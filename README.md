# E-Commerce Application 
Built by Yash Muthanna
---

# Proshop Django + React E-commerce

This is a fully Dockerized e-commerce application built using Django (backend) and React (frontend). The project provides both API functionality and a user interface for browsing products, managing orders, and handling payments.

## Features:
- Django REST API for backend
- React frontend for user interactions
- Dockerized for easy setup and deployment
- Uses PostgreSQL for database
- Built-in authentication and authorization

---

## Prerequisites

Before setting up this project locally, ensure you have the following installed:

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/install/)

---

## Getting Started

Follow these steps to clone the repository, set up, and run the application locally.

### 1. Clone the Repository

Open your terminal and run the following command:

```bash
git clone https://github.com/YashMuthanna/ecommerce-full.git
```

Navigate into the project directory:

```bash
cd ecommerce-full
```

### 3. Build and Run with Docker

To build and run the application with Docker, simply run the following command:

```bash
docker-compose up --build
```

This will:
- Build the Docker images for both the backend (Django) and frontend (React).
- Start the containers, including the database (PostgreSQL), backend, and frontend services.

The first time you run this, it may take a few minutes to build all the images.

---

### 4. Access the Application

Once the containers are up and running, you can access the application via your browser:

- **Frontend (React)**: `http://localhost`
- **Backend (Django API)**: `http://localhost:8000/api/`

### 5. Running Database Migrations

After the containers are running, you need to run the Django migrations to set up the database schema:

```bash
docker-compose exec backend python manage.py migrate
```

---

### 6. Creating a Superuser

To create a Django superuser (admin), run the following command:

```bash
docker-compose exec backend python manage.py createsuperuser
```

Follow the prompts to create an admin user.

---

## Stopping the Application

To stop the running containers:

```bash
docker-compose down
```

This will stop and remove all running containers but keep the built images and volumes.

---

## Common Docker Commands

### View Running Containers
To see which containers are running, use:

```bash
docker ps
```

### Access the Backend Container Shell
To access the shell inside the backend container:

```bash
docker-compose exec backend bash
```

### View Logs
To view the logs of a running container, use:

```bash
docker-compose logs
```

---

## Troubleshooting

### Container Not Starting or Failing
If the containers are not starting correctly or exiting unexpectedly, use the following command to view logs for more information:

```bash
docker-compose logs <container_name>
```

### Rebuilding the Images
If you make changes to the Dockerfiles, use the `--build` flag to rebuild the images:

```bash
docker-compose up --build
```

---

## Project Structure

Here’s a brief overview of the project structure:

```bash
ecommerce-full/
├── backend/              # Django backend
│   ├── manage.py
│   ├── backend/          # Django project settings
│   └── ...
├── frontend/             # React frontend
│   ├── public/
│   ├── src/
│   └── ...
├── Dockerfile            # Backend Dockerfile
├── docker-compose.yml    # Docker Compose configuration
└── .env                  # Environment variables
```

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Conclusion

You now have the full application running locally using Docker! If you encounter any issues or have questions, feel free to raise an issue or reach out.

---

Let me know if you want to customize this README further based on specific needs!
