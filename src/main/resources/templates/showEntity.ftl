<#-- @ftlvariable name="entity" type="com.example.models.Entity" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>
            Entity: ${entity.name}
        </h3>
        <p>
            ${entity.id}
        </p>
        <p>
            ${entity.value}
        </p>
        <p>
            ${entity.seasonId}
        </p>
        <p>
            ${entity.order}
        </p>
        <p>
            ${entity.description}
        </p>
        <hr>
        <p>
            <a href="/entities/${entity.id}/edit">Edit entity</a>
        </p>
    </div>
</@layout.header>