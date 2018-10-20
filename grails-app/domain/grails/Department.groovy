package grails

class Department implements Serializable {

    String nombre

    Date Datecreado
    Date Dateactualizado

    static hasMany = [users: User, contacs: Contacts]

    static constraints = {

        nombre(unique: true, blank: false)
        Datecreado(Date: true)
        Dateactualizado(Date: true)
        users(nullable: false)
        contacs(nullable: false)

    }
}
