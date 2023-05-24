<#-- @ftlvariable name="article" type="com.example.models.Article" -->
<#-- @ftlvariable name="entities" type="kotlin.collections.List<com.example.models.Entity>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>
            ${article.title}
        </h3>
        <p>
            ${article.body}
        </p>
        <hr>
        <#list entities as entity>
            <#if entity??>
                <a href="/entities/${entity.id}">${entity.name}</a><br>
            </#if>
        </#list>
        <p>
            <a href="/articles/${article.id}/edit">Edit article</a>
        </p>
    </div>

</@layout.header>