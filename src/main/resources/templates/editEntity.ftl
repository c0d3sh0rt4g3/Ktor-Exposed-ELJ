<#-- @ftlvariable name="entity" type="com.example.models.dataclasses.Entity" -->
<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.dataclasses.Article>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>Edit entity</h3>
        <form action="/entities/${entity.id}" method="post">
            <p>
                <input type="text" name="value" value="${entity.value}">
            </p>
            <p>
                <input type="text" name="name" value="${entity.name}">
            </p>
            <p>
                <input type="text" name="seasonId" value="${entity.seasonId}">
            </p>
            <p>
                <input type="text" name="order" value="${entity.order}">
            </p>
            <p>
                <textarea name="description">${entity.description}</textarea>
            </p>
            <select name="sectionID">
                <#list articles? reverse as article>
                    <option value="${article.id}" name="sectionId">${article.id}</option>
                </#list>
            </select>
            <p>
                <input type="submit" name="_action" value="update">
            </p>
        </form>
    </div>
    <div>
        <form action="/entities/${entity.id}" method="post">
            <p>
                <input type="submit" name="_action" value="delete">
            </p>
        </form>
    </div>
</@layout.header>