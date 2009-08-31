package com.collectivecolors.extensions.as3.data
{
  //----------------------------------------------------------------------------
  // Imports
  
  import com.collectivecolors.emvc.interfaces.IExtension;
    
  //----------------------------------------------------------------------------
  
  public class ExtensionSet
  {
    //--------------------------------------------------------------------------
    // Properties
    
    private var _extensions : Object = { };
		private var extensionCache : Array;
		
    //--------------------------------------------------------------------------
    // Accessor / modifiers
    
    /**
     * Get all extensions in this set.
     */ 
		public function get extensions( ) : Array
		{
		  if ( extensionCache == null ) {
			  extensionCache = [ ];
			
			  for ( var extensionName : String in _extensions )
			  {
				  extensionCache.push( _extensions[ extensionName ] );
			  }
		  }
			
			return extensionCache;
		}
		
		/**
		 * Set all extensions in this set.
		 */
		public function set extensions( values : Array ) : void
		{
		  _extensions = { };
		  
		  for each( var extension : IExtension in values )
		  {
		    addExtension( extension );
		  }  
		}
		
		/**
		 * Get a single extension from the extension set.
		 */
		public function getExtension( extensionName : String ) : IExtension
		{
		  if ( ! _extensions.hasOwnProperty( extensionName ) )
		  {
		    return null;
		  }
		  
		  return _extensions[ extensionName ];
		}
		
		/**
		 * Add a single extension to this set.
		 */
		public function addExtension( extension : IExtension ) : void
		{
			// Add extension to collection.
			_extensions[ extension.getExtensionName( ) ] = extension;
			
			// Clear cache.
			extensionCache = null;
		}
		
		/**
		 * Remove an existing extension from this set.
		 */
		public function removeExtension( extensionName : String ) : void
		{
		  // Remove extension from collection.
		  delete _extensions[ extensionName ];
		  
		  // Clear cache.
		  extensionCache = null;
		}
	}
}