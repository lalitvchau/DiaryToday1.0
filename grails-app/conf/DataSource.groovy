dataSource {
			pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
            url = "jdbc:mysql://localhost/diarytodaydb"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            dbCreate = "update"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'org.hibernate.cache.SingletonEhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory' // Hibernate 4
   
}

// environment specific settings
environments {
    development {
        dataSource {
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
            url = "jdbc:mysql://localhost/diarytodaydb"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            dbCreate = "update" // one of 'create', 'create-drop','update'
            // url = "com.mysql.jdbc.Driver"
        }
    }
    test {
        dataSource {
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
            url = "jdbc:mysql://localhost/diarytodaydb"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            dbCreate = "update" // one of 'create', 'create-drop','update'
        }
    }
    production {
        dataSource {
            pooled = true
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
            url = "jdbc:mysql://localhost/diarytodaydb"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
            dbCreate = "update" // one of 'create', 'create-drop','update'
        }
    }
}
