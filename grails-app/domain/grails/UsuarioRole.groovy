package grails

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class UsuarioRole implements Serializable{

    private static final long serialVersionUID = 1

    Usuario usuario
    Role roles

    @Override
    boolean equals(other) {
        if (other instanceof UsuarioRole) {
            other.usuarioId == usuario?.id && other.rolesId == roles?.id
        }
    }

    @Override
    int hashCode() {
        def builder = new HashCodeBuilder()
        if (usuario) builder.append(usuario.id)
        if (roles) builder.append(roles.id)
        builder.toHashCode()
    }

    static UsuarioRole get(long usuarioId, long rolesId) {
        criteriaFor(usuarioId, rolesId).get()
    }

    static boolean exists(long usuarioId, long rolesId) {
        criteriaFor(usuarioId, rolesId).count()
    }

    private static DetachedCriteria criteriaFor(long usuarioId, long rolesId) {
        UsuarioRole.where {
            usuario == Usuario.load(usuarioId) &&
                    roles == Role.load(rolesId)
        }
    }

    static UsuarioRole create(Usuario usuario, Role roles) {
        def instance = new UsuarioRole(usuario: usuario, roles: roles)
        instance.save()
        instance
    }

    static boolean remove(Usuario u, Role r) {
        if (u != null && r != null) {
            UsuarioRole.where { usuario == u && roles == r }.deleteAll()
        }
    }

    static int removeAll(Usuario u) {
        u == null ? 0 : UsuarioRole.where { usuario == u }.deleteAll()
    }

    static int removeAll(Role r) {
        r == null ? 0 : UsuarioRole.where { roles == r }.deleteAll()
    }

    static constraints = {
        roles validator: { Role r, UsuarioRole ur ->
            if (ur.usuario?.id) {
                UsuarioRole.withNewSession {
                    if (UsuarioRole.exists(ur.usuario.id, r.id)) {
                        return ['userRole.exists']
                    }
                }
            }
        }
    }

    static mapping = {
        id composite: ['usuario', 'roles']
        version false
    }
}
