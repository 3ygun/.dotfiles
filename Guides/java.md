# Java

<!-- TOC depthFrom:2 -->

- [Language Guides](#language-guides)
- [Syntax](#syntax)
    - [Streams](#streams)
    - [Annotations](#annotations)
        - [Code Gen with Annotations](#code-gen-with-annotations)
- [Optimizations](#optimizations)
- [Testing](#testing)
- [Profilling](#profilling)
- [Bentchmarking](#bentchmarking)
- [Win arguments](#win-arguments)

<!-- /TOC -->

## Language Guides

- [~1999 Cheat Sheet](http://www.digilife.be/quickreferences/QRC/JAVA%20Programming%20Guide%20-%20Quick%20Reference.pdf)
- [Java 8 - Features with Examples](http://www.journaldev.com/2389/java-8-features-with-examples)
- [Generics with examples](http://www.journaldev.com/1663/java-generics-example-method-class-interface)

## Syntax

### Streams

- [Stream Examples](http://winterbe.com/posts/2014/07/31/java8-stream-tutorial-examples/)
- [Stream Examples 2](https://zeroturnaround.com/rebellabs/java-8-explained-applying-lambdas-to-java-collections/)

### Annotations

1. Why choose an annotation over an interface for a value get/set?
    ```
    I see a few (maybe small) benefits to the annotation approach
    1. i think it’s easier to notice just reading through the class
    2. I think pulling out an annotation is simpler than reflecting on a class to get fields
    3. there's some type safety, you couldn't  have an @IntregyApiDetails annotation because it wouldn’t compile, but the compiler doesn’t care if you have a String that is named INTREGY_API_DETAILS
    4. you can run a Find Usage on the annotation class to find all the Intergy APIs, where you couldn't do the exact same thing with a field name (you'd have to run a normal Find in Path, which could result in false positives)
    5. annotations give you the option to shove multiple values into 1 annotation, vs having to haver 2 or 3 named fields in the class (see the GreenwayApiDetails class for an example of this)
    6. annotations can have default values as well, which reduces duplication
    that’s all I've got at the moment
    -- Tobin "Architecture God" 8/21/2017
    ```

#### Code Gen with Annotations

- [Annotation Processing 101](http://hannesdorfmann.com/annotation-processing/annotationprocessing101)

## Optimizations

- [Java Strings: private static vs local variable performance](https://stackoverflow.com/questions/36185564/java-strings-private-static-vs-local-variable-performance)
    - Should only be findability if they are all known at compile time
- [http://www.gregbugaj.com/?p=204]()

## Testing

- With Groovy [Spock](http://spockframework.org/spock/docs/1.1/)

## Profilling

- [VisualVM](https://visualvm.github.io/)

## Bentchmarking

Frameworks:

- [VisualVM](https://visualvm.github.io/)
    - "All-in-One Java Troubleshooting Tool :: VisualVM is a visual tool integrating commandline JDK tools and lightweight profiling capabilities. Designed for both development and production time use."
- JMH (Java Microbenchmark Harness) [see](http://openjdk.java.net/projects/code-tools/jmh/)
    - What the OpenJDK team uses [see discussion](https://groups.google.com/forum/#!topic/mechanical-sympathy/m4opvy4xq3U)
    - Examples:
        - [baeldung.com/java-microbenchmark-harness](http://www.baeldung.com/java-microbenchmark-harness)
        - [java-performance.info/jmh](http://java-performance.info/jmh/)
- Google's [Caliper](https://github.com/google/caliper)
    - Google OSS benchmarking framework
    - Is updated BUT hasn't been repackaged in a while. All of the "good" seems to be transfered to JMH
        - Why jmh? Seems that it takes care of helping you avoid dead code eleminating everything
    - Examples:
        - [codingjunkie.net/micro-benchmarking-with-caliper](http://codingjunkie.net/micro-benchmarking-with-caliper/)
        - [Caliper Tutorial](https://www.youtube.com/watch?v=Rbx0HUCnF24)

## Win arguments

- [Is it better practice to use String.format over string Concatenation in Java?](https://stackoverflow.com/questions/925423/is-it-better-practice-to-use-string-format-over-string-concatenation-in-java)
    - Format = 1416 millisecond
    - Concatenation = 134 millisecond
    - String Builder = 117 millisecond
- [Efficiency of Java double brace initialization](https://stackoverflow.com/questions/924285/efficiency-of-java-double-brace-initialization)
