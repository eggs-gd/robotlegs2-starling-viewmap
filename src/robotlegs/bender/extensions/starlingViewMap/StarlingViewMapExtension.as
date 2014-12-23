//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.extensions.starlingViewMap {
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IExtension;
    import robotlegs.bender.framework.api.IInjector;
    import robotlegs.bender.framework.impl.UID;
    import robotlegs.bender.extensions.starlingViewMap.api.IStarlingViewMap;
    import robotlegs.bender.extensions.starlingViewMap.impl.StarlingViewMap;
    import robotlegs.bender.extensions.matching.instanceOfType;

    import starling.core.Starling;


    /**
     * Basic StarlingView Extension.
     *
     * @author jamieowen
     */
    public class StarlingViewMapExtension implements IExtension {

        /*============================================================================*/
        /* Public Properties                                                          */
        /*============================================================================*/

        /*============================================================================*/
        /* Private Properties                                                         */
        /*============================================================================*/

        private var _uid:String = UID.create(StarlingViewMapExtension);

        private var _context:IContext;
        private var _injector:IInjector;

        /*============================================================================*/
        /* Public Functions                                                           */
        /*============================================================================*/

        public function extend(context:IContext):void {
            _context = context;
            _injector = context.injector;

            context.whenInitializing(whenInitializing);
            context.whenDestroying(whenDestroying);

            _context.addConfigHandler(instanceOfType(Starling), handleStarling);
            _injector.map(IStarlingViewMap).toSingleton(StarlingViewMap);
        }

        /*============================================================================*/
        /* Private Functions                                                          */
        /*============================================================================*/

        private function whenInitializing():void {
        }

        private function whenDestroying():void {
            _injector.unmap(IStarlingViewMap);
        }

        private function handleStarling(starling:Starling):void {
            _injector.map(Starling).toValue(starling);
            _injector.getInstance(IStarlingViewMap);
        }
    }
}
