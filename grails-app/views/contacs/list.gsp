<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'contacs.label', default: 'Contacs')}" />
    <title>Contactos-Lista</title>
</head>
<body>
<g:link controller="contacs" class="btn-normal btn-extra" style="float: left; margin-left: 20px" ><g:message code="volver" /></g:link>
<g:if test="${listaC}">
    <br/>
    <h1><g:message code="listas.contacts" /></h1>
    <br/>
    <br/>
    <center>
        <table>
            <thead>
            <th>
                <g:message code="Nombre" />
            </th>
            <th>
                <g:message code="Mostras" />
            </th>
            <th>
                <g:message code="Editar" />
            </th>
            </thead>
            <tbody>
            <g:each in="${listaC}" var="est">
                <tr>
                    <td>${est.nombre}</td>
                    <td><g:link controller="contacs" action="show" id="${est.id}" ><g:message code="Mostras" /></g:link></td>
                    <td><g:link controller="contacs" action="edit" id="${est.id}" ><g:message code="Editar" /></g:link></td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </center>
</g:if>
<g:else>
    No existen contactos en el sistema
</g:else>

</body>
</html>