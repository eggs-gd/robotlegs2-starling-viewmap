/**
 * Author:  Alessandro Bianco
 * Website: http://alessandrobianco.eu
 * Twitter: @alebianco
 * Created: 06/05/13 18.56
 *
 * Copyright © 2013 Alessandro Bianco
 */
package robotlegs.bender.bundles.starling {

	import robotlegs.bender.extensions.starlingEventMap.StarlingEventMapExtension;
	import robotlegs.bender.extensions.starlingViewMap.StarlingViewMapExtension;
	import robotlegs.bender.framework.api.IBundle;
	import robotlegs.bender.framework.api.IContext;

	public class StarlingBundle implements IBundle {
		public function extend(context:IContext):void {
			context.install(
					StarlingEventMapExtension,
					StarlingViewMapExtension
			);
		}
	}
}
