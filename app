<DOCTYPE! html>
<html>
<head>
</head>
  <body>
    <script src="https://www.gstatic.com/firebasejs/7.9.1/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.9.1/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.9.1/firebase-database.js"></script>
<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyCOpJP2p5N-aEUkMfq9j49BRpYLIwG2UDQ",
    authDomain: "navneliste-5579d.firebaseapp.com",
    databaseURL: "https://navneliste-5579d.firebaseio.com",
    projectId: "navneliste-5579d",
    storageBucket: "navneliste-5579d.appspot.com",
    messagingSenderId: "927521454823",
    appId: "1:927521454823:web:08e98255ab715d626c4042"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
      let db = firebase.database();
      // Referer til tabellen du vil jobbe med
      let besoksbok = db.ref("besoksbok");

      function submit_data(){
          let dato_in = new Date();
        var navn_in = document.getElementById("navn").value;
        var beskjed_in = document.getElementById("beskjed").value;
          let new_object = besoksbok.child(navn_in);

          new_object.set(
          {
            navn : navn_in , beskjed : beskjed_in, dato : String(dato_in)
          }
          );

          window.alert("Beskjed lagt til i database");
        }
    </script>
    <!-- HTML KODE -->
    <input id="navn" type="text" placeholder="Navn" required autocomplete="off"><br>
    <textarea id ="beskjed" rows="4" cols="50" placeholder="Beskjed skrives her" required></textarea><br>
    <input submit type="submit" onclick= "submit_data()"value="Send inn!">
    <!-- HTML KODE SLUTT -->
  </body>
</html>
