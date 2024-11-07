# 📝 To-Do List Web App

This is a simple and aesthetic To-Do List web application built using HTML, CSS, and JavaScript. The app allows users to add, delete, and mark tasks as completed. This project also demonstrates DevOps practices, including version control, continuous integration (CI), and containerization.

## ✨ Features

- ➕ Add tasks with a simple form
- ❌ Delete tasks or ✅ mark them as completed
- 🎨 Different themes available for visual customization
- 💾 Saves tasks to local storage so they persist on page reload

## 🛠 DevOps Tools Applied

This project incorporates DevOps practices to streamline development and deployment:

1. **🔄 Version Control with Git and GitHub**:
   - All source code is tracked using Git, with a GitHub repository to host the codebase.

2. **🤖 Continuous Integration with GitHub Actions**:
   - A GitHub Actions workflow is set up to automatically check for code quality.
   - Linting is performed on HTML, CSS, and JavaScript files using `htmlhint`, `stylelint`, and `eslint`.
   - The workflow runs on every push and pull request to the `main` branch.

3. **📦 Containerization with Docker**:
   - A Dockerfile is included to containerize the application.
   - The app runs in an NGINX server within the Docker container, enabling consistent deployment across environments.

4. **📄 GitHub Pages for Documentation**:
   - A GitHub Pages branch (`gh-pages`) is used to host a landing page with a sample CV and project information.

## 🚀 Getting Started

### 📋 Prerequisites

- [🐳 Docker](https://www.docker.com/) installed on your local machine.
- [🐙 Git](https://git-scm.com/) for version control.

### 🔧 Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Muhammad-Ahmed-Sohail/To-Do-List-Web-App.git
   cd To-Do-List-Web-App
1. **Run the App Locally (Without Docker)**:
   - Open (`index.html`) in a web browser to use the app locally.
  
### 💻 Running the App with Docker

1. **Build the Docker Image**:
    ```bash
    docker build -t todo-list-app .
1. **Run the App Locally (Without Docker)**:
    ```bash 
    docker run -p 8080:80 todo-list-app

  The app will be accessible at http://localhost:8080 in your browser.

## ⚙️ GitHub Actions Workflow

The GitHub Actions CI workflow is defined in .github/workflows/ci.yml. It includes the following steps:

- HTML Linting with htmlhint
- CSS Linting with stylelint
- JavaScript Linting with eslint

The workflow is triggered on every push or pull request to the main branch to ensure code quality.

## 📦 Dockerization

The Dockerfile is set up to run the app on an NGINX server:
``` Dockerfile
# Use a base image with an HTTP server
FROM nginx:alpine

# Copy the app files to the default nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the app accessible
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
```

## 🌐 GitHub Pages Landing Page

The project also includes a GitHub Pages landing page hosted on the gh-pages branch. It serves as a portfolio page with a link to a sample CV.

### 🔮 Future Improvements
- 🔒 Add user authentication and task management with a backend
- 💅 Improve UI/UX with more features and animations
- 🗄  Integrate a database for persistent storage beyond local storage

## 🤝 Contributing

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes and commit them (git commit -m 'Add some feature').
4. Push to the branch (git push origin feature-branch).
5. Open a Pull Request.

## 📜 License

This project is open source.





   

