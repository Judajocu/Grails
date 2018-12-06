<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'contacs.label', default: 'Contacs')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
    <g:link controller="contacs" class="btn-normal btn-extra" style="float: left; margin-left: 20px" ><g:message code="volver" /></g:link>
    <br/>
    <h1><g:message code="registrar.contacto"/></h1>
    <br/>
    <legend></legend>
        <div id="create-contacs" class="content scaffold-create" role="main">
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
            <g:form resource="${this.contacs}" method="POST">
                <fieldset class="form">
                    <f:field bean="contacs" property="nombre"/>
                    <f:field bean="contacs" property="apellido"/>
                    <f:field bean="contacs" property="email"/>
                    <f:field bean="contacs" property="telefono"/>
                    <f:field bean="contacs" property="direccion"/>
                    <f:field bean="contacs" property="posicion"/>
                    <f:field bean="contacs" property="celular"/>
                    <f:field bean="contacs" property="departments"/>
                    <f:field bean="contacs" property="categorias"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
