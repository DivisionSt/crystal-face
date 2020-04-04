using Toybox.WatchUi as Ui;
using Toybox.Application as App;
using Toybox.Graphics as Gfx;

class Background extends Ui.Drawable {

	var background_bmp;

	function initialize() {
		Drawable.initialize({ :identifier => "Background" });
		background_bmp = Ui.loadResource(Rez.Drawables.xShipNew);
	}

	function draw(dc) {
		// Set the background color then call to clear the screen
		dc.setColor(Graphics.COLOR_TRANSPARENT, gBackgroundColour);
        dc.clear();
        dc.drawBitmap(40, 20, background_bmp);
	}
}
