# Simple WatchFace

A simple watch face application for the Garmin Vivoactive HR smart watch.

## Objective

I needed a simple design that clearly displays the time & date which is easily
readable without my reading glasses. I use existing widgets for activity data
so time, date & battery level indicator is sufficient.

### Battery Indicator

A simple battery level indicator uses just colour to signify the battery status,
I only need to know if the status is Good, OK, or Low.

| Status | Battery Level Percentage      | Display Colour |
|:-      |:-                             |:-              |
| Good   | >= 50                         | Blue           |
| OK     | < 50 & >= 15                  | Yellow         |
| Low    | < 15                          | Red            |

![Simple WatchFace](docs/watchface.png)

---
(c) copyright pecodez
