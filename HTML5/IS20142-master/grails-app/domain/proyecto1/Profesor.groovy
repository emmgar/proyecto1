package proyecto1

class Profesor extends Usuario {
    String nombres;
    String apellidoMaterno
    String apellidoPaterno
    Date  fechaDeNacimiento
    //Curso curso
    String nivel
    //String horario
    String video = 'video.mp4'
    String grado_academico = 'constancia.pdf'
    //String correo
    String estado = 'espera' // espera se asgin en el controller, en save
    
    static constraints = {
        nombres(blank:false)
        apellidoMaterno(blank:false)
        apellidoPaterno(blank:false)
        nivel(inList: ["Basico", "Intermedio", "Avanzado", "Conversacion"],blank:false)
        //horario(inList: ["Matutino", "Vespertino", "Mixto"],blank:false )
        video(blank:false)
        grado_academico(blank:false)
        correo(blank:false,email:true)
        estado(inList: ["espera", "aceptado", "rechazado"],blank:false)
    }
     
    String toString() {
      "${nombres} ${apellidoPaterno}  ${apellidoMaterno}"
  }
}
   

