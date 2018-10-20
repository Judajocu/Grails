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
    }
}
