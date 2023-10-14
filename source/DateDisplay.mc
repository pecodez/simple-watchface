import Toybox.Time;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Graphics;

module DateDisplay {

  function draw(labels as Dictionary<Symbol, Text>) as Void {
    var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
    
    labels[:day].setText(Lang.format("$1$", [today.day_of_week]));
    labels[:date].setText(Lang.format("$1$", [today.day]));
  }
}