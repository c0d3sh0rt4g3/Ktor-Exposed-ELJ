package com.example.dao.daoInstances

import com.example.dao.DAOEntity
import com.example.dao.DAOEntityImpl
import kotlinx.coroutines.runBlocking

val daoEntity: DAOEntity = DAOEntityImpl().apply {
    runBlocking {
        if(allEntities().isEmpty()) {
            addNewEntity("Some value", "Some name", "Some description", "Some seasonID", 1, 1)
        }
    }
}