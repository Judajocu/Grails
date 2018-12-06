<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contacs.label', default: 'Contacs')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:link controller="contacs" action="list" class="btn-normal btn-extra" style="float: left; margin-left: 20px"><g:message code="volver" /></g:link>
    <br/>
    <h1><g:message code="editar.contacto"/></h1>
    <br/>
    <legend></legend>
        <div id="edit-contacs" class="content scaffold-edit" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.contacs}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.contacs}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.contacs}" method="PUT">
                <g:hiddenField name="version" value="${this.contacs?.version}" />
                <fieldset class="form">
                    <f:all bean="contacs"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
