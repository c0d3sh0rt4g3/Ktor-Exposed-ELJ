<#macro header>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Kotlin Journal</title>
        <script src="js/deleteEntities.js"></script>
    </head>
    <body style="text-align: center; font-family: sans-serif">
    <img src="https://raw.githubusercontent.com/ktorio/ktor-documentation/2.3.0/codeSnippets/snippets/tutorial-website-static/src/main/resources/files/ktor_logo.png">
    <h1>Kotlin Ktor Journal </h1>
    <p><i>Powered by Ktor & Freemarker!</i></p>
    <hr>
    <#nested>
    <a href="/">Back to the article page</a>
    <a href="/entities">Back to the entity page</a>
    </body>
    </html>
</#macro>