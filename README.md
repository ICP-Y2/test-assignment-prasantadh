# Hello Servlet — GitHub Codespace Template (Tomcat + Community Server Connectors)

## ✔ Included
- Java 17 Dev Container
- Maven support
- Servlet + JSP + JSTL dependencies
- Community Server Connectors extension auto-installed

## ▶ How Students Run the Project

### 1. Build
```
mvn clean package
```

### 2. Run (Tomcat)
- Open **Command Palette**
- Run: **Server: Create New Server**
- Choose: **Apache Tomcat 10**
- Install it inside `servers/tomcat10`
- Then right‑click → **Add Deployment**
- Select `target/hello-servlet.war`
- Start server

### 3. Open Browser
The URL will be like:
```
https://<codespace>-8080.app.github.dev/hello-servlet
```

Done!
