// Firebase Configuration Mock / Template
// Por favor, reemplaza los valores vacíos con los datos de tu proyecto de Firebase
// que podrás encontrar en la consola de Firebase.

import { initializeApp } from "https://www.gstatic.com/firebasejs/10.9.0/firebase-app.js";
import { getFirestore } from "https://www.gstatic.com/firebasejs/10.9.0/firebase-firestore.js";
// Si se utiliza Auth en el futuro:
// import { getAuth } from "https://www.gstatic.com/firebasejs/10.9.0/firebase-auth.js";

const firebaseConfig = {
  apiKey: "TU_API_KEY_AQUI",
  authDomain: "TU_AUTH_DOMAIN_AQUI",
  projectId: "TU_PROJECT_ID_AQUI",
  storageBucket: "TU_STORAGE_BUCKET_AQUI",
  messagingSenderId: "TU_MESSAGING_SENDER_ID_AQUI",
  appId: "TU_APP_ID_AQUI"
};

// Inicializar Firebase
let app;
let db;

try {
  app = initializeApp(firebaseConfig);
  db = getFirestore(app);
  console.log("Firebase inicializado correctamente.");
} catch (error) {
  console.error("Error al inicializar Firebase. Asegúrate de configurar las credenciales en assets/js/firebase-config.js. Detalles:", error);
}

export { app, db };
