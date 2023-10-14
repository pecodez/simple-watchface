import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

module BatteryIndicator {

  function draw(dc as Dc) as Void {
    var batteryLevel = System.getSystemStats().battery.toNumber();
    var batteryLevelColor = Graphics.COLOR_BLUE as Number;

    if (batteryLevel < 15) {
      batteryLevelColor = Graphics.COLOR_RED;
    }

    if (batteryLevel < 50) {
      batteryLevelColor = Graphics.COLOR_YELLOW;
    }

    dc.setColor(batteryLevelColor, Graphics.COLOR_TRANSPARENT);
    dc.fillRectangle(90, 156, 44, 8);
  }
}