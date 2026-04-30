fetch('inventario.json')
   .then(response => response.json())
   .then(data => {
       const tabla = document.querySelector("#tabla tbody");

       data.forEach(dispositivo => {
           const fila = document.createElement("tr");

           fila.innerHTML = `
               <td>${dispositivo.id}</td>
               <td>${dispositivo.tipo}</td>
               <td>${dispositivo.marca}</td>
               <td>${dispositivo.modelo}</td>
               <td>${dispositivo.precio}</td>
           `;

           tabla.appendChild(fila);
       });
   })
   .catch(error => console.error("Error:", error));
