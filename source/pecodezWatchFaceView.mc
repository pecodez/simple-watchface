import Toybox.Application;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Time;

class pecodezWatchFaceView extends WatchUi.WatchFace {

    private var _graphics as Drawable;

    function initialize() {
        WatchFace.initialize();
        _graphics = new $.Rez.Drawables.graphics();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Get the current time and format it correctly
        var clockTime = System.getClockTime();

        var timeFormat = "$1$";
        var hours = Lang.format(timeFormat, [clockTime.hour.format("%02d")]);
        var mins = Lang.format(timeFormat, [clockTime.min.format("%02d")]);

        var hourLabel = View.findDrawableById("HourLabel") as Text;
        hourLabel.setText(hours);

        var minLabel = View.findDrawableById("MinLabel") as Text;
        minLabel.setText(mins);


        var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);

        var dateLabel = View.findDrawableById("DateLabel") as Text;
        dateLabel.setText(Lang.format("$1$ $2$", [today.day_of_week, today.day]));

        var batteryLevel = System.getSystemStats().battery.toNumber();

        var batteryLabel = View.findDrawableById("BatteryLevelLabel") as Text;
        batteryLabel.setText( Lang.format("$1$$2$", [batteryLevel, "%"]));

        View.onUpdate(dc);
        _graphics.draw(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    // The user has just looked at their watch. Timers and animations may be started here.
    function onExitSleep() as Void {
    }

    // Terminate any active timers and prepare for slow updates.
    function onEnterSleep() as Void {
    }

}
