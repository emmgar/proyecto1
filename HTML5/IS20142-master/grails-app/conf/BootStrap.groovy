
import proyecto1.Usuario
import proyecto1.Alumno
import proyecto1.Profesor

class BootStrap {
    
  def pdfRenderingService
  
  def mailService

    def init = { servletContext ->
        
      //new Usuario(usuario:"user",passwd:"pass").save()
      
      new Alumno(usuario:"user",passwd:"pass", nombre:"Alumno1", 
      apPaterno:"Ap Paterno", apMaterno:"Ap Materno", correo: "correo@correo.com",
      fecha_nac:new Date()).save()
  
      new Profesor(usuario:"profe",passwd:"pass", nombres:"Juan", tipo:2, role:"Profesor",
      apellidoPaterno:"Perez", apellidoMaterno:"Hernandez", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Basico", estado: "aceptado").save()

      new Profesor(usuario:"profe2",passwd:"pass", nombres:"Pedro", tipo:2, role:"Profesor",
      apellidoPaterno:"Ramirez", apellidoMaterno:"Cruz", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Intermedio", estado: "aceptado").save()
  
        new Profesor(usuario:"profe4",passwd:"pass", nombres:"Roberto", tipo:2, role:"Profesor",
      apellidoPaterno:"Ramirez", apellidoMaterno:"Gutierrez", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Avanzado", estado: "aceptado").save()
  
        new Profesor(usuario:"profe3",passwd:"pass", nombres:"Jorge", tipo:2, role:"Profesor",
      apellidoPaterno:"Rosas", apellidoMaterno:"Sanchez", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Conversacion", estado: "aceptado").save()
  
        new Profesor(usuario:"profe5",passwd:"pass", nombres:"Mariana", tipo:2, role:"Profesor",
      apellidoPaterno:"Valdivia", apellidoMaterno:"Carbonell", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Basico", estado: "aceptado").save()

      new Profesor(usuario:"profe6",passwd:"pass", nombres:"Monica", tipo:2, role:"Profesor",
      apellidoPaterno:"Garcia", apellidoMaterno:"Garcia", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Intermedio", estado: "aceptado").save()
  
        new Profesor(usuario:"profe7",passwd:"pass", nombres:"Ivonne", tipo:2, role:"Profesor",
      apellidoPaterno:"Sanchez", apellidoMaterno:"Garcia", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Avanzado", estado: "aceptado").save()
  
        new Profesor(usuario:"profe8",passwd:"pass", nombres:"Veronica", tipo:2, role:"Profesor",
      apellidoPaterno:"Martinez", apellidoMaterno:"Hernandez", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Conversacion", estado: "aceptado").save()

  
        //pdfRenderingService.render()
        
        // Render to a file
        /*new File("constancia.pdf").withOutputStream { outputStream ->
    pdfRenderingService.render([template: "/layouts/constancia"], outputStream)
        }*/
    
        //renderPdf(template: "/layouts/constancia", filename: "constancia.pdf")
        
    /*
    String inputFile = "grails-app/views/layouts/constancia.html";
        String url = new File(inputFile).toURI().toURL().toString();
        String outputFile = "constancia.pdf";
        OutputStream os = new FileOutputStream(outputFile);
        
        ITextRenderer renderer = new ITextRenderer();
        renderer.setDocument(url);
        renderer.layout();
        renderer.createPDF(os);
        
        os.close();
    */
    /*
    mailService.sendMail {
      to "salmones.20142@gmail.com"
      from "salmones.20142@gmail.com"
      subject "Solicitud de Curso"
      body 'El alumno: ${alumno} ha solicitado el curso ${curso}, por favor
      pongase en contacto con el alumno a su correo: ${alumno.correo} y en su caso
      confirme en la pagina la aprobacion o rechazo del curso
   }*/
        
    }
    def destroy = {
    }
}
