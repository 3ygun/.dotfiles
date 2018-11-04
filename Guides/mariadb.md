# Maria DB

<!-- TOC depthFrom:2 -->

- [Discussion](#discussion)

<!-- /TOC -->

## Discussion

- [Why ENUMs are evil](http://komlenic.com/244/8-reasons-why-mysqls-enum-data-type-is-evil/)
    - Summary:
        1. They aren't easy to change (alters update the entire table)
        1. Could have a reference table with the enum data
            - If you made it a foreign key reference you'd have the better `DEFAULT` details
        1. They don't have a good `DEFAULT` mode
