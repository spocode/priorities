# Spokane Priorites App

What are the priorities of the people? This is an easy informal voting system that uses Bottle.py, MongoDB and Chart.js to collect and graph the data.


## TODO

- [x] Chart.js
- [ ] Sessions/cookies
- [ ] Improved MongoDB aggregation (the current function is a pig that won't scale)


## Example MongoDB Collection

```JSON
{
    "_id": {
        "$oid": "5275675ded805ab090aa25f9"
    },
    "status": "family",
    "priorities_list": [
        "transportation",
        "business",
        "education",
        "community",
        "safety",
        "environment",
        "health"
    ],
    "zip": "",
    "years": ""
}
```
