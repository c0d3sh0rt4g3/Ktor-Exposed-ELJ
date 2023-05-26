package com.example.models

import org.jetbrains.exposed.sql.ReferenceOption
import org.jetbrains.exposed.sql.Table

object Entities : Table(){
    val id = integer("id").autoIncrement()
    val value = varchar("valor", 1024)
    val name = varchar("nombre", 128)
    val description = varchar("descripcion", 256)
    val seasonId = varchar("idtemporada", 32)
    val order = integer("orden")
    val sectionId = integer("sectionid").references(Articles.id, onDelete = ReferenceOption.CASCADE)
    override val primaryKey = PrimaryKey(id)
}