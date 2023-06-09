<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.dataclasses.Article>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <h2>Articles:</h2>
    <#list articles?reverse as article>
        <div>
            <h3>
                <a href="/articles/${article.id}">Title: ${article.title}</a>
            </h3>
            <p>
                ${article.body}
            </p>
        </div>
    </#list>
    <hr>
    <p>
        <a href="/articles/new">Create article</a>
        <a href="/entities">Entity page</a>
    </p>
</@layout.header>
