
## Javascript Timezone Abbreviation Map

 - maps from timezone offsets to common timezone abbreviations
 - shows different values based on Daylight Savings Time
  - during standard time, -7:00 shows MST, -8:00 shows PST
  - during daylight savings time, -7:00 shows PDT


### Usage with Intimidatetime and Chosen

 - http://trentrichardson.com/examples/Intimidatetime/#Formatting
 - http://harvesthq.github.io/chosen/

```
$('#the-input').intimidatetime({
  format: 'M/d/yyyy hh:mm:ss z'
  units: {
    timezone: {
      format: 'zzz'
      names: TIMEZONE_ABBR_MAP
    }
  }
});
$('select').chosen()
```

### Preview

![preview](https://camo.githubusercontent.com/6008afffcd244294718484b15c6e489050af6eb0/687474703a2f2f7075752e73682f384f6e53692e706e67)

### References

 - http://www.w3schools.com/jsref/jsref_gettimezoneoffset.asp
 - http://en.wikipedia.org/wiki/List_of_time_zone_abbreviations
 - http://www.timeanddate.com/library/abbreviations/timezones/

