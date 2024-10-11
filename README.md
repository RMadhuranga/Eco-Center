<h1 align="center">🌿 Eco-Center 🌿</h1>

Welcome to **Eco-Center**, a sustainable way to manage your eco-friendly store online! This project leverages modern technologies to deliver a seamless experience for both customers and administrators. Whether you’re tracking inventory or communicating with your customers, we’ve got you covered.

---

### 🚀 Project Setup

Before diving in, you'll need to configure your environment settings. Here's how you can set up the `.env` file to get started:

```bash
# MongoDB Connection String
MONGO_URI=your_mongo_uri

# Server Port
PORT=5000

# JWT Secret for Authentication
JWT_SECRET=your_secret_key

# Application Mode (development/production)
NODE_ENV=development

# Mailtrap Settings for Email Notifications
MAILTRAP_TOKEN=your_mailtrap_token
MAILTRAP_ENDPOINT=https://send.api.mailtrap.io/

# Client URL (Frontend)
CLIENT_URL=http://localhost:5173
```

Make sure you replace the placeholder values with the actual credentials.

---

### 💻 Running Eco-Center Locally

To get this app up and running on your local machine, follow these steps:

1. **Build the Project**:  
   Run the following command to compile the project and prepare it for local development:
   ```bash
   npm run build
   ```

2. **Start the Application**:  
   After the build, start the server using:
   ```bash
   npm run start
   ```

You should now have Eco-Center running locally on `http://localhost:5000`.

---

### 📬 Sending Emails with Eco-Center

We use **Mailtrap** for handling transactional emails in development. Make sure to set up your Mailtrap credentials in the `.env` file for email functionality to work.

---

### Contributors 🌟

A big shout-out to the wonderful minds behind this project:

- **Janith Nilkshan**
- **Rukmal Madhuranga**
- **Sanduni Vidhusha**
- **Bhagya Senawiratne**
- **Sasanka Nirmal**

---

### Thank You! 🙏

We hope you enjoy using Eco-Center as much as we enjoyed building it. Stay tuned for more updates as we continue to improve the platform and bring new features your way.

_See you in the next one! 🚀_

--- 

