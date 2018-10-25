package grails

import grails.Usuario
import grails.Role
import grails.UsuarioRole

class BootStrap {

    def springSecurityService

    def init = { servletContext ->

        Usuario admin =new Usuario(username: "GioGio", password: "1234").save(failOnError: true)
        Usuario usuario =new Usuario(username: "JoJo", password: "1234").save(failOnError: true)

        def roleAdmin = new Role(authority: "ROLE_ADMIN") .save(failOnError: true)
        def roleUsuario = new Role(authority: "ROLE_USUARIO").save(failOnError: true)

        UsuarioRole.create(admin, roleAdmin);
        UsuarioRole.create(usuario, roleUsuario);




    }

    def destroy = {
    }
}
