package mediators {
	import robotlegs.bender.bundles.starling.StarlingMediator;

	/**
	 * @author jamieowen
	 */
	public class StarlingContextViewMediator extends StarlingMediator
	{
		
		public function StarlingContextViewMediator()
		{
			
		}
		
		override public function initialize():void
		{
			super.initialize();
			trace( this + ", " + "initialise()" );
		}

		override public function destroy():void
		{
			super.initialize();
			trace( this + ", " + "destroy()" );
		}
	}
}
