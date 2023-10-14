import Toybox.Application;
import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Time;

class SimpleWatchFaceView extends WatchUi.WatchFace {

    private var graphics as Drawable;
    private var timeDisplayLabels = {} as Dictionary<Symbol, Text>;
    private var dateDisplayLabels = {} as Dictionary<Symbol, Text>;

    function initialize() {
        WatchFace.initialize();
        graphics = new $.Rez.Drawables.graphics();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));

        timeDisplayLabels = {
          :hour => View.findDrawableById("HourLabel") as Text,
          :mins => View.findDrawableById("MinLabel") as Text,
        };

        dateDisplayLabels = {
          :day => View.findDrawableById("DayLabel") as Text,
          :date => View.findDrawableById("DateLabel") as Text,
        };
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        View.onUpdate(dc);

        TimeDisplay.draw(timeDisplayLabels);
        DateDisplay.draw(dateDisplayLabels);
        BatteryIndicator.draw(dc);
        
        graphics.draw(dc);
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
