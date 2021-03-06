package props

uses gw.lang.reflect.features.BoundPropertyReference

enhancement BoundPropertyRefEnhancement : BoundPropertyReference<IHaveListenableProperties, Object> 
{
  function addListener( blk : block(obj:Object):Object ) {
    var root = this.Ctx as IHaveListenableProperties
    root.addListener( this.PropertyInfo.Name, blk )
  }
}