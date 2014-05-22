package login

import grails.transaction.Transactional
import proyecto1.Usuario
import proyecto1.Curso
import proyecto1.Alumno

@Transactional
class LoginService {
  
  def doLogin(userName, userPass) {
    def u = Usuario.findByUsuarioAndPasswd(userName, userPass)
    
    if (u) {
      return u
      // regresamos el usuario
      // Aqui se define que hacemos si el usuario existe
    } else {
      // se devolvera null
    }
  }

    def getCurso(userAlum) {
        def curso = Curso.findByEstudiante(Alumno.findByUsuario(userAlum))
        return curso
    }
}
