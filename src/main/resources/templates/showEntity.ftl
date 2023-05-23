<#-- @ftlvariable name="entity" type="com.example.models.Entity" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>
            Entity: ${entity.name}
        </h3>
        <p>
            ID: ${entity.id}
        </p>
        <p>
            Value: ${entity.value}
        </p>
        <p>
            Season ID: ${entity.seasonId}
        </p>
        <p>
            Order: ${entity.order}
        </p>
        <p>
            Description: ${entity.description}
        </p>
        <p>
            Section ID: ${entity.sectionId}
        </p>
        <hr>
        <p>
            <a href="/entities/${entity.id}/edit">Edit entity</a>
        </p>
    </div>
</@layout.header>