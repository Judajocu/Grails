<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />

    <title>Usuarios-lista</title>
</head>
<body>
<g:link controller="usuario" class="btn-normal btn-extra" style="float: left; margin-left: 20px" ><g:message code="volver" /></g:link>
<g:if test="${listaU}">
    <br/>
    <h1><g:message code="listas.users" /></h1>
    <br/>
    <br/>
    <center>
<table>
    <thead>
    <th>
        <g:message code="Username"/>
    </th>
    <th>
        <g:message code="Mostras"/>
    </th>
    <th>
        <g:message code="Editar"/>
    </th>
    </thead>
    <tbody>
    <g:each in="${listaU}" var="est">
        <tr>
            <td>${est.username}</td>
            <td><g:link controller="usuario" action="show" id="${est.id}" ><g:message code="Mostras" /></g:link></td>
            <td><g:link controller="usuario" action="edit" id="${est.id}" ><g:message code="Editar" /></g:link></td>
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