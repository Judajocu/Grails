package grails

class Department implements Serializable {

    String nombre

    static hasMany = [usuarios: Usuario, contacs: Contacs]


    Set<Contacs> getContacts(){

    }

    Set<Usuario> getUsuarios(){

    }

    static constraints = {

        nombre(unique: true, blank: false)
        //usuarios(nullable: false)
        contacs(nullable: false)

    }

    static mapping = {
        table 'Department'
    }
}
