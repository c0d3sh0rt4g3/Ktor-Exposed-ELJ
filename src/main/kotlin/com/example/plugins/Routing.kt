package com.example.plugins

import com.example.dao.daoInstances.daoArticle
import com.example.dao.daoInstances.daoEntity
import io.ktor.server.routing.*
import io.ktor.server.response.*
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.request.*
import io.ktor.server.util.*

fun Application.configureRouting() {
    routing {
        // ...
        get("/") {
            call.respondRedirect("articles")
        }
        route("articles") {
            get {
                call.respond(FreeMarkerContent("indexArticle.ftl", mapOf("articles" to daoArticle.allArticles())))
            }

            get("new") {
                call.respond(FreeMarkerContent("newArticle.ftl", model = null))
            }

            post {
                val formParameters = call.receiveParameters()
                val title = formParameters.getOrFail("title")
                val body = formParameters.getOrFail("body")
                val article = daoArticle.addNewArticle(title, body)
                call.respondRedirect("/articles/${article?.id}")
            }

            get("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("showArticle.ftl", mapOf("article" to daoArticle.article(id), "entities" to daoEntity.getEntitiesBySectionId(id))))
            }
            get("{id}/edit") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("editArticle.ftl", mapOf("article" to daoArticle.article(id))))
            }
            post("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "update" -> {
                        val title = formParameters.getOrFail("title")
                        val body = formParameters.getOrFail("body")
                        daoArticle.editArticle(id, title, body)
                        call.respondRedirect("/articles/$id")
                    }
                    "delete" -> {
                        daoArticle.deleteArticle(id)
                        call.respondRedirect("/articles")
                    }
                }
            }
        }
        route("entities") {
            get {
                call.respond(FreeMarkerContent("indexEntity.ftl", mapOf("entities" to daoEntity.allEntities())))
            }

            get("new") {
                call.respond(FreeMarkerContent("newEntity.ftl", mapOf("articles" to daoArticle.allArticles())))
            }

            post {
                val formParameters = call.receiveParameters()
                val value = formParameters.getOrFail("value")
                val name = formParameters.getOrFail("name")
                val description = formParameters.getOrFail("description")
                val seasonId = formParameters.getOrFail("seasonId")
                val order = formParameters.getOrFail("order").toInt()
                val sectionId = formParameters.getOrFail("sectionid").toInt()
                val entity = daoEntity.addNewEntity(value, name, description, seasonId, order, sectionId)
                call.respondRedirect("/entities/${entity?.id}")
            }

            get("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("showEntity.ftl", mapOf("entity" to daoEntity.entity(id))))
            }
            get("{id}/edit") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                call.respond(FreeMarkerContent("editEntity.ftl", mapOf("entity" to daoEntity.entity(id), "articles" to daoArticle.allArticles())))
            }
            post("{id}") {
                val id = call.parameters.getOrFail<Int>("id").toInt()
                val formParameters = call.receiveParameters()
                when (formParameters.getOrFail("_action")) {
                    "update" -> {
                        val value = formParameters.getOrFail("value")
                        val name = formParameters.getOrFail("name")
                        val description = formParameters.getOrFail("description")
                        val seasonId = formParameters.getOrFail("seasonId")
                        val order = formParameters.getOrFail("order").toInt()
                        val sectionId = formParameters.getOrFail("sectionid").toInt()
                        daoEntity.editEntity(id, value, name, description, seasonId, order, sectionId)
                        call.respondRedirect("/entities/$id")
                    }
                    "delete" -> {
                        daoEntity.deleteEntity(id)
                        call.respondRedirect("/entities")
                    }
                }
            }
        }
    }
}