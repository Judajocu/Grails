package grails

class User implements Serializable {

    String username
    String nombre
    String apellido

    Date Datecreado
    Date Dateactualizado

    static belongsTo = [Department]

    static constraints = {

        username(unique: true, blank: false)
        nombre(blank: false)
        apellido(blank: false)
        Datecreado(Date: true)
        Dateactualizado(Date: true)

    }
}
