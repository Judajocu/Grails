package grails

class Department {

    String nombre


    static hasMany = [users: Usuario, contacs: Contacs]

    static constraints = {

        nombre(unique: true, blank: false)
        users(nullable: false)
        contacs(nullable: false)

    }
}
