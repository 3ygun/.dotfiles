# Java

<!-- TOC depthFrom:2 -->

- [Language Guides](#language-guides)
- [Syntax](#syntax)
    - [Annotations](#annotations)

<!-- /TOC -->

## Language Guides

- [~1999 Cheat Sheet](http://www.digilife.be/quickreferences/QRC/JAVA%20Programming%20Guide%20-%20Quick%20Reference.pdf)
- [Java 8 - Features with Examples](http://www.journaldev.com/2389/java-8-features-with-examples)
- [Generics with examples](http://www.journaldev.com/1663/java-generics-example-method-class-interface)

## Syntax

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
