package proyecto1

class Alumno extends Usuario {
  
  String nombre
  String apPaterno
  String apMaterno
  //String correo
  Date fecha_nac
  
  //static belongsTo = [user: Usuario]

  static constraints = {
      nombre(blank:false)
      apPaterno(blank:false)
      apMaterno(blank:false)
      fecha_nac(blank:false)
      correo(blank:false, email:true)
      //user(validator: {user.esAlumno()})
  }
  
  String toString() {
    "Nombre: ${nombre},\n" +
    "apPaterno: ${apPaterno},\n" +
    "apMaterno: ${apMaterno},\n" +
    "correo: ${correo},\n" +
    "fecha_nac: ${fecha_nac},\n" +
    super.toString()
  }

}
