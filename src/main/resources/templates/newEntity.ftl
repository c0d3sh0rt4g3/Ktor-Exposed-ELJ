<#-- @ftlvariable name="articles" type="kotlin.collections.List<com.example.models.dataclasses.Article>" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>Create entity</h3>
        <form action="/entities" method="post">
            <p>
                <label for="value">Valor:</label>
                <input type="text" name="value">
            </p>
            <p>
                <label for="name">Name:</label>
                <input type="text" name="name">
            </p>
            <p>
                <label for="seasonId">Season ID:</label>
                <input type="text" name="seasonId">
            </p>
            <p>
                <label for="order">Order:</label>
                <input type="text" name="order">
            </p>
            <p>
                <label for="description">Description:</label>
                <textarea name="description"></textarea>
            </p>
            <label for="entity-select">Select section ID:</label>
            <select name="sectionID">
                <#list articles? reverse as article>
                    <option value="${article.id}" name="sectionId">${article.id}</option>
                </#list>
            </select>
            <p>
                <input type="submit">
            </p>
        </form>
    </div>
</@layout.header>