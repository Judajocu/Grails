package grails

class Contacts implements Serializable {

    String nombre
    String apellido
    String email
    String telefono
    String direccion
    String posicion
    String celular

    Date Datecreado
    Date Dateactualizado

    static belongsTo = [Department]
    static hasMany = [departments: Department]

    static constraints = {

        nombre(blank: false)
        apellido(blank: false)
        email(unique: true, email: true, blank: false)
        telefono(unique: true, blank: false)
        direccion(blank: false)
        Datecreado(Date: true)
        Dateactualizado(Date: true)

    }
}
