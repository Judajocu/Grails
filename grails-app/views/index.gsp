<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<g:link controller="usuario" class="btn-normal btn-extra">
    Usuario
</g:link>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <div id="controllers" class="table-row-cell" role="navigation">
                <h2>Available Controllers:</h2>
                <ul class="list-group-item-heading">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
