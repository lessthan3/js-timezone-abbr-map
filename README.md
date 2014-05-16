
# Javascript Timezone Abbreviation Map

 - maps from timezone offsets to common timezone abbreviations
 - shows different values based on Daylight Savings Time
  - during standard time, -7:00 shows MST, -8:00 shows PST
  - during daylight savings time, -7:00 shows PDT


# Usage with Intimidatetime

 - http://trentrichardson.com/examples/Intimidatetime/#Formatting

```
$('#ex_timezone_2').intimidatetime({
  format: 'M/d/yyyy hh:mm:ss z'
  units: {
    timezone: {
      format: 'zzz'
      names: TIMEZONE_ABBR_MAP
    }
  }
});
```


# References

 - http://www.w3schools.com/jsref/jsref_gettimezoneoffset.asp
 - http://en.wikipedia.org/wiki/List_of_time_zone_abbreviations
 - http://www.timeanddate.com/library/abbreviations/timezones/

