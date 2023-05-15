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
            <p>
                <input type="submit">
            </p>
        </form>
    </div>
</@layout.header>