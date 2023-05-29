package com.example.dao.daoInstances

import com.example.dao.DAOArticle
import com.example.dao.DAOArticleImpl
import kotlinx.coroutines.runBlocking

val daoArticle: DAOArticle = DAOArticleImpl().apply {
    runBlocking {
        if(allArticles().isEmpty()) {
            addNewArticle("The drive to develop!", "...it's what keeps me going.")
        }
    }
}