package com.example.models

import com.example.models.Articles.autoIncrement
import org.jetbrains.exposed.sql.ReferenceOption
import org.jetbrains.exposed.sql.Table

data class Entity(val id: Int, val value: String, val name: String, val description: String, val seasonId: String, val order: Int, val sectionId: Int)
