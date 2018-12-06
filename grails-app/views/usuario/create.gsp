<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:link controller="usuario" class="btn-normal btn-extra" style="float: left; margin-left: 20px" ><g:message code="volver" /></g:link>
    <br/>
    <h1><g:message code="registrar.usuario"/></h1>
    <br/>
    <legend></legend>

        <div id="create-usuario" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.usuario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.usuario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.usuario}" method="POST">
                <fieldset class="form">
                    <f:field bean="usuario" property="username"/>
                    <f:field bean="usuario" property="password"/>
                    <f:field bean="usuario" property="enabled"/>
                    <f:field bean="usuario" property="accountExpired"/>
                    <f:field bean="usuario" property="accountLocked"/>
                    <f:field bean="usuario" property="passwordExpired"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="Crear" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
