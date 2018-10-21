package grails


import  java.util.Date;
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Usuario implements Serializable{

    String nombre;
    String apellido;
    String username;
    String password;

    static belongsTo = [Department]

    static constraints = {
        nombre(blank: false)
        apellido(blank: false)
        username(unique: true, blank: false)
    }

    static mapping = {password column: 'password'}

}
