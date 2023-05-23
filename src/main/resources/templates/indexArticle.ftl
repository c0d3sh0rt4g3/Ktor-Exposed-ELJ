<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.Article>" -->
<#-- @ftlvariable name="entities" type="kotlin.collections.List<com.example.models.Entity>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <#list articles?reverse as article>
        <div>
            <h3>
                <a href="/articles/${article.id}">Title: ${article.title}</a>
            </h3>
            <p>
                ${article.body}
            </p>
            <#list entities?reverse as entity>
                <#if entity??>
                    ${entity.name}
                </#if>
            </#list>
        </div>
    </#list>
    <hr>
    <p>
        <a href="/articles/new">Create article</a>
        <a href="/entities">Entity page</a>
    </p>
</@layout.header>
