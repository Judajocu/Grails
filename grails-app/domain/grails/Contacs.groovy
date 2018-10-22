package grails

class Contacs implements Serializable {

    String nombre
    String apellido
    String email
    String telefono
    String direccion
    String posicion
    String celular


    static belongsTo = [Department]
    static hasMany = [departments: Department]

    static constraints = {

        nombre(blank: false)
        apellido(blank: false)
        email(unique: true, email: true, blank: false)
        telefono(unique: true, blank: false)
        direccion(blank: false)

    }
}
