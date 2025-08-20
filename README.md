# 🥒 SpiceHeritage – Pickle E-Commerce Website  

![Java](https://img.shields.io/badge/Java-17+-orange?logo=java)  
![JSP](https://img.shields.io/badge/JSP%2FServlets-Jakarta-blue?logo=apachetomcat)  
![Database](https://img.shields.io/badge/Database-Oracle%20%7C%20PostgreSQL-green?logo=postgresql)  
![Status](https://img.shields.io/badge/Deployment-Render%20Cloud-success?logo=render)  

A full-stack **pickle e-commerce platform** built with ❤️ using **Java, JSP, Servlets, Oracle/PostgreSQL, HTML, CSS, JavaScript, and Firebase OTP authentication**.  

---

## ✨ Features  

### 👤 User Side  
- 🔑 Login/Register/Forgot Password with **Firebase OTP Authentication**.  
- 📂 **Pickle Catalog** with dynamic product loading.  
- 🛒 **Cart & Checkout** with up to **3 saved addresses**.  
- 📑 **My Orders** with complete order history (items, prices, address).  
- 📝 Profile & address management (edit, update).  

### 🛠 Admin Side  
- 🔐 Secure **Admin Login** with session management.  
- 📊 Dashboard with:  
  - 👥 User registration details.  
  - 📦 Add / Remove Products.  
  - 🛒 Orders list for all users.  
  - 💬 Suggestions & contact form inputs.  
  - 📈 Sales Dashboard with analytics.  

---

## 🏗 Tech Stack  

**Frontend:**  
- HTML5, CSS3, Vanilla JavaScript  

**Backend:**  
- Java, JSP, Servlets (Jakarta)  

**Database:**  
- Oracle SQL (local dev)  
- PostgreSQL (Render / Supabase deployment)  

**Authentication:**  
- Firebase OTP (Phone-based)  

**Deployment:**  
- Apache Tomcat 11  
- Render Cloud (war deployment)  

---

## ⚡ Architecture  

```mermaid
flowchart LR
    User[👤 User] -->|Browser| HTML[HTML Pages]
    HTML--> Servlet[Java Servlets]
    Servlet --> DB[(PostgreSQL / Oracle DB)]
    Admin[🛠 Admin] --> Servlet
    
