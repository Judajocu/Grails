<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

    <a style="float: left; margin-left: 20px" href="${createLink(uri: '/')}" class="btn-normal btn-extra"><g:message code="volver" /></a>
    <br/>
    <h1><g:message code="gestion.usuarios" /></h1>
    <br/>
    <legend></legend>
    <br/>
        <center>
            <div>
                <g:link controller="usuario" action="create" class="btn-normal btn-extra"><g:message code="create.user" /></g:link>
            </div>
            <br/>
            <br/>
            <br/>
            <div>
                <g:link controller="usuario" action="list" class="btn-normal btn-extra"><g:message code="lista.users" /></g:link>
            </div>
        </center>
    <br/>
    <br/>
    <legend></legend>
    </body>
</html>