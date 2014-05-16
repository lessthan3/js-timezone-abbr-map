
## Javascript Timezone Abbreviation Map

 - maps from timezone offsets to common timezone abbreviations
 - shows different values based on Daylight Savings Time
  - during standard time, -7:00 shows MST, -8:00 shows PST
  - during daylight savings time, -7:00 shows PDT, -8:00 shows AKDT


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

![preview](https://cloud.githubusercontent.com/assets/1251587/2996450/3173ce80-dcef-11e3-81c9-4561d5f44481.jpg)


### Contributing

I chose what seemed like they would be well known time zone abbreviations for each zone.  If you live in a zone and the abbreviation isn't obvious, let us know and it can be updated.

### References

 - http://www.w3schools.com/jsref/jsref_gettimezoneoffset.asp
 - http://en.wikipedia.org/wiki/List_of_time_zone_abbreviations
 - http://www.timeanddate.com/library/abbreviations/timezones/



### License

©2013 Bryant Williams under the [MIT license](http://www.opensource.org/licenses/mit-license.php):

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



