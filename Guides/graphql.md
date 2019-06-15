# GraphQL

<!-- TOC depthFrom:2 -->

- [What is it?](#what-is-it)
- [Good Discussions](#good-discussions)
- [Implementation](#implementation)
    - [Java](#java)
        - [Enhancements](#enhancements)
- [Other Reading](#other-reading)
- [Other](#other)
- [Auto Generate Output Type](#auto-generate-output-type)

<!-- /TOC -->

## What is it?

- [https://graphql.org/](https://graphql.org/)

## Good Discussions

- [GraphQL API Designe (Github Guy)](https://medium.com/@__xuorig__)
- [Schema Diagram](https://raw.githubusercontent.com/sogko/graphql-shorthand-notation-cheat-sheet/master/graphql-shorthand-notation-cheat-sheet.png)

## Implementation

### Java

- [Java GraphQL with Spring Boot](http://www.baeldung.com/spring-graphql)
- **** [Kotlin GraphQL with SpringBoot](https://blog.pusher.com/writing-graphql-service-using-kotlin-spring-boot/) *****
- [Redis with GraphQL for Subscriptions](https://blog.apollographql.com/graphql-subscriptions-with-redis-pub-sub-f636fc84a0c4)
- [](https://medium.com/@abody/apollo-graphql-and-kotlin-create-a-back-to-back-subscription-system-860b51389179)
- [GraphQL Java DataLoader](https://github.com/graphql-java/java-dataloader)

- [GraphQL Java](https://github.com/graphql-java/graphql-java)
- [GraphQL Java Annotations](https://github.com/graphql-java/graphql-java-annotations)
- [Spring Boot GraphQL](https://github.com/graphql-java/graphql-spring-boot)
- [Spring GraphQL Common](https://github.com/oembedler/spring-graphql-common)

- [Spring Data JPA Docs](https://docs.spring.io/spring-data/jpa/docs/current/reference/html/)
    - [Spring Data JPA JavaDoc](https://docs.spring.io/spring-data/jpa/docs/current/api/org/springframework/data/jpa/repository/JpaRepository.html)

- [Kotlin GraphQL Java](https://github.com/graphql-java/graphql-java-tools/blob/master/src/test/kotlin/com/coxautodev/graphql/tools/EndToEndSpec.kt)

#### Enhancements

- Having readonly traffic go to the non-MySQL master
    - [With Spring JPA](https://stackoverflow.com/questions/30938574/segregating-the-read-only-and-read-write-in-spring-j2ee-apps)
        - Add `@Transactional(readOnly = true)` to things and have a different `jdbc` connector string implementing this [ReplicationDriver](https://dev.mysql.com/doc/connector-j/8.0/en/connector-j-master-slave-replication-connection.html)

## Other Reading

- [Awesome GraphQL](https://github.com/chentsulin/awesome-graphql)
- [GraphQL Mutation Design: Anemic Mutations](https://medium.com/@__xuorig__/graphql-mutation-design-anemic-mutations-dd107ba70496)
    - Same advice different author [Designing GraphQL Mutations](https://blog.apollographql.com/designing-graphql-mutations-e09de826ed97)
    - Keep mutations simple and specific `AddItemToCheckout`, `AddBillingMethod`, etc. instead of all encompassing `UpdateCheckoutInput`
- [GraphQL Mutation Design: Hypermedia GraphQL API](https://medium.com/@__xuorig__/graphql-mutation-design-hypermedia-graphql-api-faf03f3a898a)
    - What's hypermedia?
        - A hypermedia-driven site provides information to navigate the site’s REST interfaces dynamically by including hypermedia links with the responses.
    - Why would you want this? (Best description)
        - "As for links, a lot of people use a REST API like a RPC API and ignore actions if present, but using those actions as a switch to know if you should be showing a button or not avoids having discrepancies between similar clients (iOS/web/etc). You should be using them for this instead of hoping your frontend clients are all magically getting their business logic correct across different teams."
- [GraphQL Mutation Design: Batch Updates](https://medium.com/@__xuorig__/graphql-mutation-design-batch-updates-ca2452f92833)
    - There is missing `Types` currently but the work around doesn't look too bad
- [From REST to GraphQL](https://0x2a.sh/from-rest-to-graphql-b4e95e94c26b)
    - All encompasing document
    - Says implementing `Relay` is worth while even if you don't use `Relay`
    - Bunch of link offs
- [Apollo Generate GraphQL Tools](https://www.apollographql.com/docs/graphql-tools/generate-schema.html)
- [Relay Spec](https://facebook.github.io/relay/docs/en/graphql-server-specification.html)
- [GraphQL Client Like Postman](https://github.com/skevy/graphiql-app)

## Other

- [View Full Schema](http://localhost:9000/graphql/schema.json)

## Auto Generate Output Type

- [Quicktype](https://blog.quicktype.io/graphql-with-quicktype/)
    - Commands:
        ```
        quicktype --graphql-introspect http://localhost:9000/graphql/schema.json --graphql-schema updox.gqlschema

        // Make some random query
        // Would need some queries that cover all cases in the app :P for direct auto-generation

        quicktype --src-lang graphql -l kotlin --graphql-schema updox.gqlschema query.graphql > thing.kt
        ```
