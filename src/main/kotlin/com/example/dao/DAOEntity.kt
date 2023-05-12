package com.example.dao

import com.example.models.*

interface DAOEntity {
    suspend fun allEntities(): List<Entity>
    suspend fun entity(id: String): Entity?
    suspend fun addNewEntity(value: String, name: String, description: String, seasonId: String, order: Int): Entity?
    suspend fun editEntity(id: String, value: String, name: String, description: String, seasonId: String, order: Int): Boolean
    suspend fun deleteEntity(id: String): Boolean
}