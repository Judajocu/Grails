package grails

class Contacs implements Serializable {

    String nombre
    String apellido
    String email
    Long telefono
    String direccion
    String posicion
    Long celular
    String categorias
    Set departments = []


    //static belongsTo = [Department]
    static hasMany = [departments: Department]

    Set<Department> getDepartment(){

    }

    static constraints = {

        nombre(blank: false)
        apellido(blank: false)
        email(unique: true, email: true, blank: false)
        telefono(unique: true, blank: false)
        direccion(blank: false)
        departments(nullable: false)
        categorias (blank: true)

    }

    static mapping = {
        table 'Contacs'
    }
}
