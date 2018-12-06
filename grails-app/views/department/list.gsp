<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />

    <title>Departamentos-lista</title>
</head>
<body>
<g:link controller="department" class="btn-normal btn-extra" style="float: left; margin-left: 20px" >Volver</g:link>
<g:if test="${listaD}">
    <br/>
    <h1>Lista de Departamentos registrados</h1>
    <br/>
    <br/>
    <center>
        <table>
            <thead>
            <th>
                Nombre
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
            <g:each in="${listaD}" var="est">
                <tr>
                    <td>${est.nombre}</td>
                    <td><g:link controller="department" action="show" id="${est.id}" >Mostrar</g:link></td>
                    <td><g:link controller="department" action="edit" id="${est.id}" >Editar</g:link></td>
                    <td><g:link controller="department" action="delete" id="${est.id}" params="[id:est.id]" >Eliminar</g:link></td>
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