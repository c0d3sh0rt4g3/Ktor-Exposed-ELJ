<#-- @ftlvariable name="article" type="com.example.models.dataclasses.Article" -->
<#-- @ftlvariable name="entities" type="kotlin.collections.List<com.example.models.dataclasses.Entity>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h2>Article:</h2>
        <h3>
            ${article.title}
        </h3>
        <p>
            ${article.body}
        </p><br><br>
        <h2>Entities associated:</h2>
        <#list entities as entity>
            <#if entity??>
                <h3>
                    <a href="/entities/${entity.id}">Entity: ${entity.name}</a>
                </h3>
                <p>Value: ${entity.value}</p>
                <p>Season ID: ${entity.seasonId}</p>
                <p>Order: ${entity.order}</p>
                <p>Description: ${entity.value}</p>
                <p>Section ID: ${entity.sectionId}</p>
            </#if>
        </#list>
        <hr>
        <p>
            <a href="/articles/${article.id}/edit">Edit article</a>
        </p>
    </div>

</@layout.header>