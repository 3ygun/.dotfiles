# Kotlin

<!-- TOC depthFrom:2 -->

- [Useful Libraries](#useful-libraries)
- [IDE Support](#ide-support)
- [Cool Stuff](#cool-stuff)
- [Interesting Code Samples](#interesting-code-samples)
- [Install](#install)

<!-- /TOC -->

## Useful Libraries

- [Awesome Kotlin](https://kotlin.link/)
    - [Github](https://github.com/KotlinBy/awesome-kotlin)

- [Ktor](https://ktor.io/)
    - "Framework for quickly creating connected applications in Kotlin with minimal effort" - their repo
    - [Github](https://github.com/ktorio/ktor)
    - References
        - [RESTful Kotlin with Ktor and Exposed](https://ryanharrison.co.uk/2018/04/14/kotlin-ktor-exposed-starter.html)
        - [Ktor with AsyncDB stuff](https://github.com/TechEmpower/FrameworkBenchmarks/tree/master/frameworks/Kotlin/ktor)
- [Koin](https://insert-koin.io/)
    - Dependency injection which reads as more [Dagger](https://google.github.io/dagger/) than [Spring](https://spring.io/)
    - [Github](https://github.com/InsertKoinIO/koin)
- [Exposed](https://github.com/jetbrains/Exposed)
    - Kotlin SQL processor built ontop of the JDBC backends
    - Written by Jetbrains and looks siiiiiick
- [Requery](https://github.com/requery/requery)
    - SQL processing which has more stars than Exposed BUT doesn't look as slick
- [Ktorm](https://ktorm.liuwj.me/)
    - Kotlin ORM with SQL DSL
- [Scientist](https://github.com/spoptchev/scientist)
    - Kotlin copy of [Github's Scientist library](https://github.com/github/scientist) and is linked off the main repo
    - Has `.conductibleIf` which meets Jon's requirements to "Allow conditionally turn off the experiements"
    - Gives better docs than the Java version [Scientist4J](https://github.com/rawls238/Scientist4J)
- [Kotlin Test](https://github.com/kotlintest/kotlintest)
    - An absolute superset of [Spec](https://spekframework.org/) so don't care about the spec libary
- gRPC (Google RPC) libraries
    - [GRPC Kotlin](https://github.com/rouzwawi/grpc-kotlin)
    - [KROTO](https://github.com/marcoferrer/kroto-plus)
    - Which?
        - The KROTO one seems to allow defining customer generation code easier so it's probably better to learn long term. The other one appears to have a nice default?
- SQL
    - [jasync-sql](https://github.com/jasync-sql/jasync-sql)
    - [r2dbc Postgresql](https://github.com/r2dbc/r2dbc-postgresql)

- [Arrow](https://arrow-kt.io/)
    - "Functional companion to Kotlin's Standard Library" - the repo
    - For functional programming?
    - [Github](https://github.com/arrow-kt/arrow)
- [Javalin](https://javalin.io/)
    - Simple web framework for Java and Kotlin
    - [Github](https://github.com/tipsy/javalin)
- [Spec](https://spekframework.org) **This is trash see "Kotlin Test" instead**
    - Gherkin (Cucumber) or Jasmine (that JavaScript thing) style tests
    - [Github](https://github.com/spekframework/spek/)
    - This extension on Spec has what looks to be the Spock tables [Aspen](https://github.com/dam5s/aspen)
- [Mockk](https://mockk.io)
    - Spock style mocking
    - [Github](https://github.com/mockk/mockk)

- [KGraphQL](https://github.com/pgutkowski/KGraphQL)
    - Pure Kotlin with only one instace of the Schema (which is in code)
- [Kotlin Statistics](https://github.com/thomasnield/kotlin-statistics)
    - Basics of a Kotlin datascience library
- [Krangl](https://github.com/holgerbrandl/krangl)
    - Pandas in Kotlin
    - Really cool stuff...
- [Kotlin Data Science Resources](https://github.com/thomasnield/kotlin-data-science-resources)

- [JDA](https://github.com/mcdh/jda)
    - An adapter API for JetBrains' Java-Decompiler port of FernFlower, written in Kotlin

- [ts2kt - Converter of TypeScript definition files to Kotlin external declarations](https://github.com/Kotlin/ts2kt)

## IDE Support

- [VSCode Extension](https://github.com/mathiasfrohlich/vscode-kotlin)
- VSCode
    - [Kotlin Language Server](https://github.com/fwcd/KotlinLanguageServer)
    - [Kotlin Debug Adapter](https://github.com/fwcd/KotlinDebugAdapter)
    - [Kotlin Quick Start](https://github.com/fwcd/KotlinQuickStart)

## Cool Stuff

- [Sourcerer App](https://sourcerer.io/start)
    - "Sourcerer app makes a visual profile from your GitHub and git repositories" - [their repo](https://github.com/sourcerer-io/sourcerer-app)
- [PartiQL (Kotlin impl)](https://github.com/partiql/partiql-lang-kotlin)
    - Amazon project which is defined as: "PartiQL is based on SQL92 and has added support for working with schemaless hierarchical data"

## Interesting Code Samples

- [`generateSequence`](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.sequences/generate-sequence.html)

## Install

- [Kotlin CLI](https://kotlinlang.org/docs/tutorials/command-line.html)
- [Install OpenJDK on MacOS](https://solarianprogrammer.com/2018/09/28/installing-openjdk-macos/)
