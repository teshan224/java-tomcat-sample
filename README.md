# Java Web App CI/CD with Jenkins and Apache Tomcat

This project demonstrates a **CI/CD pipeline** for building, testing, and deploying a Java-based web application (`index.jsp`) to **Staging (QA)** and **Production** environments using **Jenkins**, **Maven**, and **Apache Tomcat**.

## 📌 Project Overview
- **Tech Stack:** Jenkins, Maven, Apache Tomcat 9, Groovy, GitHub, Ubuntu
- **Type:** CI/CD Pipeline for Java Web Application
- **Repository:** [java-tomcat-sample](https://github.com/teshan224/java-tomcat-sample)

---

## 🚀 Features
- Automated build and deployment pipeline triggered by GitHub commits.
- Maven-based packaging of `.war` artifacts.
- Deployment to **Staging (QA)** via Jenkins Freestyle job.
- Manual approval before deployment to **Production**.
- Secure credential management for Tomcat deployments.

---

## 🛠️ CI/CD Workflow

### 1️⃣ **Pipeline Job: `Package_Application_Code`**
- **Trigger:** Poll SCM (`* * * * *`) for GitHub push events.
- **Build:** Maven clean & package using `pom.xml`.
- **Artifact Handling:** Archives `.war` files for downstream jobs.
- **Trigger Next Job:** Automatically calls the `Deploy_Application_Staging_Env` job.

### 2️⃣ **Freestyle Job: `Deploy_Application_Staging_Env`**
- **Step 1:** Copy `.war` artifacts from the pipeline job.
- **Step 2:** Deploy to Apache Tomcat 9.x using Deploy to Container plugin.
- **Step 3:** QA verification.

### 3️⃣ **Deploy to Production**
- Manual approval step.
- Deployment to production Tomcat server.

---

## 📂 Repository Structure
```bash
java-tomcat-sample/
│── src/main/webapp/index.jsp
│── pom.xml
│── Jenkinsfile
└── ...
