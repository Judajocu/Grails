<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contacs.label', default: 'Contacs')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <a style="float: left; margin-left: 20px" href="${createLink(uri: '/')}" class="btn-normal btn-extra">Volver</a>
    <br/>
    <h1>gestion de Contactos</h1>
    <br/>
    <legend></legend>
    <br/>
    <center>
        <div>
            <g:link controller="contacs" action="create" class="btn-normal btn-extra">Crear Contactos</g:link>
        </div>
        <br/>
        <br/>
        <br/>
        <div>
            <g:link controller="contacs" action="list" class="btn-normal btn-extra">Ver lista de Contactos</g:link>
        </div>
    </center>
    <br/>
    <br/>
    <legend></legend>
    </body>
</html>