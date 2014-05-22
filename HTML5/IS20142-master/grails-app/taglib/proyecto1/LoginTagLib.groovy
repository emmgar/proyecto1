package proyecto1

class LoginTagLib {
  def loginControl = {
    if(session.user){
      out << "<p class='navbar-text navbar-right'>Bienvenido ${session.user.usuario}</a></p>"
      out << """<p class='navbar-text navbar-right'>[${link(action:"logout", controller:"usuario"){"Cerrar Sesión"}}]</p>"""
      
      //out << """[${link(action:"logout", controller:"usuario"){"Logout"}}]"""
      //out << render (template: '/layouts/welcome', model: [usuarioInstance: session.user])
    } else {
      //out << """[${link(action:"login", controller:"usuario"){"Login"}}]"""      
      out << render (template:'/layouts/login')
    }
  }
}