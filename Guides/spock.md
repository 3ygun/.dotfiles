# Spock

<!-- TOC depthFrom:2 -->

- [Data Driven](#data-driven)

<!-- /TOC -->

## Data Driven

```groovy
@Unroll
def "parsePrice(#input)"(final String input, final BigDecimal output) {
    setup:
        // Presetup

    expect:
        output == ZuoraCharge.parsePrice(input)

    where:
        input | output
        null | null
}
```
