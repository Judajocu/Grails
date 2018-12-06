<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />

    <title>Departamentos-lista</title>
</head>
<body>
<g:link controller="department" class="btn-normal btn-extra" style="float: left; margin-left: 20px" ><g:message code="volver" /></g:link>
<g:if test="${listaD}">
    <br/>
    <h1><g:message code="listas.department" /></h1>
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
            <g:each in="${listaD}" var="est">
                <tr>
                    <td>${est.nombre}</td>
                    <td><g:link controller="department" action="show" id="${est.id}" ><g:message code="Mostras" /></g:link></td>
                    <td><g:link controller="department" action="edit" id="${est.id}" ><g:message code="Editar" /></g:link></td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </center>
</g:if>
<g:else>
    No existen Departamentos en el sistema
</g:else>

</body>
</html>