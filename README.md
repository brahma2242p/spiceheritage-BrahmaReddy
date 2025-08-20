#  SpiceHeritage – Pickle E-Commerce Website  
![Java](https://img.shields.io/badge/Java-17+-orange?logo=java)  
![JSP](https://img.shields.io/badge/JSP%2FServlets-Jakarta-blue?logo=apachetomcat)  
![Database](https://img.shields.io/badge/Database-Oracle%20%7C%20PostgreSQL-green?logo=postgresql)  
![Status](https://img.shields.io/badge/Deployment-Render%20Cloud-success?logo=render)  
![Database Deployment](https://img.shields.io/badge/DB%20Hosting-Supabase-brightgreen?logo=supabase) 

A full-stack **pickle e-commerce platform** built with ❤️ using **Java, JSP, Servlets, Oracle/PostgreSQL, HTML, CSS, JavaScript, and Firebase OTP authentication**.  
---
## ✨ Features  
### 👤 User Side  
- 🔑 Login/Register/Forgot Password Pages.  
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
- Firebase OTP (Under Development )
**Deployment:**  
- SupaBase (PostgreSQl Database)
- Render Cloud (war deployment)  
---
## ⚡ Architecture  
```mermaid
flowchart LR
    User[👤 User] <-->|Browser| HTML[HTML Pages]
    HTML<--> Servlet[Java Servlets]
    Servlet <--> DB[(PostgreSQL / Oracle DB)]
    Admin[🛠 Admin] <--> |Browser| AdminPages[Admin Pages]
    AdminPages<--> Servlet[Java Servlets]
````
## 🗄 Spice Heritage ER Diagram
```mermaid
classDiagram
    %% Users table
    class USERS {
        +user_id PK
        full_name
        mobile_number UNIQUE
        email UNIQUE
        password_hash
        registration_date
    }
    %% Addresses table
    class ADDRESSES {
        +address_id PK
        user_id FK
        full_name
        address_line1
        address_line2
        city
        state
        pincode
        mobile_number
    }
    %% Products table
    class PRODUCTS {
        +id PK
        name
        description
        category
        spice_level
        price_per_gram
        image_blob
        is_popular
    }
    %% Orders table
    class ORDERS {
        +order_id PK
        user_id FK
        total_amount
        shipping_full_name
        shipping_address_line1
        shipping_address_line2
        shipping_city
        shipping_state
        shipping_pincode
        shipping_mobile_number
        order_date
        order_status
    }
    %% Order Items table
    class ORDER_ITEMS {
        +order_item_id PK
        order_id FK
        product_id FK
        quantity
        price_per_gram
        weight_grams
    }
    %% Admins table
    class ADMINS {
        +admin_id PK
        username UNIQUE
        password_hash
    }
    %% Relationships
    USERS "1" --> "0..*" ADDRESSES : has
    USERS "1" --> "0..*" ORDERS : places
    ORDERS "1" --> "0..*" ORDER_ITEMS : contains
    ORDER_ITEMS "*" --> "1" PRODUCTS : references
```
Cardinal Notation

    USERS "1" --> "0..*" ADDRESSES : has
    
    USERS "1" --> "0..*" ORDERS : places 
    
    ORDERS "1" --> "1..*" ORDER_ITEMS : contains 
    
    ORDER_ITEMS "*" --> "1" PRODUCTS : references 
    




