package grails

class User implements Serializable {

    String username
    String nombre
    String apellido

    Date Datecreado
    Date Dateactualizado

    static belongsTo = [Department]

    static constraints = {



    }
}
