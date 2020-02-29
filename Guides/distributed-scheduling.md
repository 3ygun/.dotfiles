# Distributed Scheduling

Updox is looking into distributed schedulers for internal products

## Notes

- [Quartz Scheduler](http://www.quartz-scheduler.org/)
    - Seems to be the one that people know about. I know Daniel had looked into it once but I think got pulled off.
- [Walmart Labs approach to the problem](https://medium.com/walmartlabs/an-approach-to-designing-distributed-fault-tolerant-horizontally-scalable-event-scheduler-278c9c380637)
    - The [BigBen Github](https://github.com/walmartlabs/bigben)
        - License: Apache 2
        - Language: Kotlin
        - Comments: Questions about if it's still maintained. Supposedly allows swapping the backend
- [StackOverflow - Distributed cron](https://stackoverflow.com/questions/26890312/how-to-design-a-distributed-job-scheduler)
- We could probably read into papers like [Reliable Cron across the Planet](https://queue.acm.org/detail.cfm?id=2745840)
