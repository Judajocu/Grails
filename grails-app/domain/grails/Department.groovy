package grails

class Department implements Serializable {

    String nombre

    static belongsTo = [Contacs]
    static hasMany = [usuarios: Usuario, contacs: Contacs]


    /*Set<Contacs> getContacts(){

    }*/

    Set<Usuario> getUsuario(){

    }

    static constraints = {

        nombre(unique: true, blank: false)
        usuarios(nullable: false)
        //contacs(nullable: false)

    }

    static mapping = {
        table 'Department'
    }
}
