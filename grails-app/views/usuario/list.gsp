<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />

    <title>Usuarios-lista</title>
</head>
<body>
<g:link controller="usuario" class="btn-normal btn-extra" style="float: left; margin-left: 20px" >Volver</g:link>
<g:if test="${listaU}">
    <br/>
    <h1>Lista de usuarios registrados</h1>
    <br/>
    <br/>
    <center>
<table>
    <thead>
    <th>
        Username
    </th>
    <th>
        Mostrar
    </th>
    <th>
        Editar
    </th>
    <th>
        Borrar
    </th>
    </thead>
    <tbody>
    <g:each in="${listaU}" var="est">
        <tr>
            <td>${est.username}</td>
            <td><g:link controller="usuario" action="show" id="${est.id}" >Mostrar</g:link></td>
            <td><g:link controller="usuario" action="edit" id="${est.id}" >Editar</g:link></td>
            <td><g:link controller="usuario" action="delete" id="${est.id}" params="[id:est.id]" >Eliminar</g:link></td>
        </tr>
    </g:each>
    </tbody>
</table>
    </center>
</g:if>
<g:else>
    No existen usuarios en el sistema
</g:else>

</body>
</html>