<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>Create entity</h3>
        <form action="/entities" method="post">
            <p>
                <input type="text" name="value">
            </p>
            <p>
                <input type="text" name="name">
            </p>
            <p>
                <input type="text" name="seasonId">
            </p>
            <p>
                <input type="text" name="order">
            </p>
            <p>
                <textarea name="description"></textarea>
            </p>
            <p>
                <input type="submit">
            </p>
        </form>
    </div>
</@layout.header>