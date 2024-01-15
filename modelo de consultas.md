# Modelo de Consultas

### Registrar nuevo usuario:
`INSERT INTO user (name,lastname,address,userId,password,role) VALUES ("Ernesto","Valencia","Industria","ernesto.vlc","vlcindu","user")`

### Registrar nuevo proveedor (providerId debe corresponderse con userId):
`INSERT INTO provider (vehicle,trip,reviews,availability,providerId) VALUES ("Berlingo","Barcelona","5/5","Available","rgarcia")`

### Registrar nuevo administrador:
`INSERT INTO admin (admin_id,password) VALUES ("mdvfz","ViscaScrum");`

### Revisar si el usuario y contraseña existen y concuerdan con la DB:
`select * from user user where userId = "mdvfz" and password = "ViscaScrum"`

**Si el usuario y la contraseña coinciden, este usuario estará autorizado a modificar los datos de su perfil.**
### Ejemplo con cambio de contraseña
UPDATE `mudapp2`.`user` SET `password` = 'GoodPeople' WHERE (`userId` = 'mdvfz');


### Revisar si un proveedor está disponible y si el destino necesitado concuerda con sus preferencias ordenandolo por reseñas.
`select * from provider where availability = "Available" and trip = "Barcelona" order by rating;`

### Crear nueva orden de servicio:
`INSERT INTO ticket (commodities,date_time,origin,destination,fare,userId,provider_providerId,orderId) VALUES ("Whole Room","2024-01-13","Sants","Poble Nou",100,"taniam","rgarcia","515181")`

### Ordenar proveedores de servicio según calificaciones:
`select * from provider order by reviews desc`

### Crear nueva entrada en paymentStatus:
`INSERT INTO paymentstatus (date,paymentType,status,paymentId) VALUES ("2024-01-19","Card",true,"515178")`

### Revisar si la orden de servicio se encuentra pagada
`select ticket.userId, ticket.orderId, paymentstatus.status from ticket INNER JOIN paymentstatus on paymentstatus.paymentId=ticket.orderId where orderId = 515178`

### Bloquear proveedor de servicio una vez que se haya creado nueva orden:
UPDATE `mudapp2`.`provider` SET `availability` = 'Not Available' WHERE (`providerId` = 'rgarcia');