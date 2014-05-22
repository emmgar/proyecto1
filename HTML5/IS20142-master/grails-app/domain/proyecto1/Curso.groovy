package proyecto1

class Curso {
    String nivel
    String horario
    Profesor profesor
    Alumno estudiante = null
    int calificacion = 5
    // estado = 1 => Solicitud hecha, pero no confirmada por el profesor
    // estado = 2 => Solicitud hecha y aceptada por el profesor
    // estado = 3 => Solicitud hecha y rechazada por el profesor
    int estado = 1
    
   //static hasOne = [profesor: Profesor, nivel: String]
   //static belongsTo = Profesor, Alumno
   
    static constraints = {
        nivel(inList:['Basico','Intermedio','Avanzado','Conversacion'])
        profesor nullable:true
        estudiante(nullable:true)
        horario(inList: ["Matutino", "Vespertino", "Mixto"],blank:false )
        //estudiante blank: false, unique: true
    }
    
    String toString() {
        """nivel: ${nivel},\n""" +
    """horario: ${horario},\n""" +
    "Profesor: ${profesor},\n" +
    "estudiante: ${estudiante},\n" +
    "calificacion: ${calificacion},\n"
    }
    
}