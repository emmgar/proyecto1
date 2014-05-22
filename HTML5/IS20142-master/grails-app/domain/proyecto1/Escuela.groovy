package proyecto1

class Escuela {
    String usuario;
    String passwd;
    String nombre;
    String apellidoPaterno;
    String apellidoMaterno;
    
    static constraints = {
    }
    
    String toString(){
        "\n \t usuario: ${usuario}"
    }
}
