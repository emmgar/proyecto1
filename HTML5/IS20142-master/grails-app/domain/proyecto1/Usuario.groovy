package proyecto1

class Usuario {
    
  String usuario
  String passwd
  String correo
  // Tipos: 1 -> Alumno; 2-> Profesor; 3 -> Escuela
  int tipo  = 1
  
  String role  = "Alumno"
  
  static transients = ['role']

  static constraints = {
      usuario(blank:false, unique: true)
      passwd(blank:false, password:true)
      role(inList:["Alumno", "Profesor", "Escuela"])
  }

  String toString() {
      "\n \t usuario: ${usuario}"
  }
  
  boolean esAlumno() {
    return tipo == 1;
  }
  
  boolean esProfesor() {
    return tipo == 2;
  }
  
  boolean esEscuela() {
    return tipo == 3;
  }
  
}
