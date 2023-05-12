<#-- @ftlvariable name="entity" type="com.example.models.Entity" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        val id: String, val value: String, val name: String, val description: String, val seasonId: String, val order: Int
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