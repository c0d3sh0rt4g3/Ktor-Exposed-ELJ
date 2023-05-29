package com.example.dao

import kotlinx.coroutines.*
import com.example.models.objects.Articles
import com.example.models.objects.Entities
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.transactions.*
import org.jetbrains.exposed.sql.transactions.experimental.*

object DatabaseFactory {
    fun init() {
        val user = "user"
        val password = "user"
        val driverClassName = "org.h2.Driver"
        val jdbcURL = "jdbc:h2:./default"
        val database = Database.connect(jdbcURL, driverClassName, user, password)
        transaction(database) {
            SchemaUtils.create(Articles)
            SchemaUtils.create(Entities)
        }
    }
    suspend fun <T> dbQuery(block: suspend () -> T): T =
        newSuspendedTransaction(Dispatchers.IO) { block() }
}