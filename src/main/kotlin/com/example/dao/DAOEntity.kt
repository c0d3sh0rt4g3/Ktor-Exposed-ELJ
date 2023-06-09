package com.example.dao

import com.example.models.dataclasses.Entity

interface DAOEntity {
    suspend fun allEntities(): List<Entity>
    suspend fun entity(id: Int): Entity?
    suspend fun addNewEntity(value: String, name: String, description: String, seasonId: String, order: Int, sectionId: Int): Entity?
    suspend fun editEntity(id: Int, value: String, name: String, description: String, seasonId: String, order: Int, sectionId: Int): Boolean
    suspend fun deleteEntity(id: Int): Boolean
    suspend fun getEntitiesBySectionId(id: Int):List<Entity>

}