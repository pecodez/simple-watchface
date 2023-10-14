import Toybox.System;
import Toybox.Lang;
import Toybox.WatchUi;

module TimeDisplay {

  function draw (labels as Dictionary<Symbol, Text>) as Void {
    // Get the current time and format it correctly
    var clockTime = System.getClockTime();

    var timeFormat = "$1$";
    var hours = Lang.format(timeFormat, [clockTime.hour.format("%02d")]);
    var mins = Lang.format(timeFormat, [clockTime.min.format("%02d")]);

    labels[:hour].setText(hours);
    labels[:mins].setText(mins);
  }
  
}