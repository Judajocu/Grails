package grails

class Department implements Serializable {

    String nombre

    Date Datecreado
    Date Dateactualizado

    static hasMany = [users: User, contacs: Contacts]

    static constraints = {
    }
}
