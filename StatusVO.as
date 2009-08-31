package com.collectivecolors.extensions.as3.data
{
  //----------------------------------------------------------------------------
  
  public class StatusVO
  {
    //--------------------------------------------------------------------------
    // Constants
    
    public static const SUCCESS : String = 'success';
    public static const NOTICE : String  = 'notice';
    public static const ERROR : String   = 'error';
    
    //--------------------------------------------------------------------------
    // Properties
    
    private var _extension : String = null;
        
    private var _status : String    = NOTICE;
    private var _message : String   = '';
    
    //--------------------------------------------------------------------------
    // Constructor
    
    public function StatusVO( extension : String = null, 
                              status    : String = NOTICE, 
                              message   : String = '' )
    {
      this.extension = extension;
      
      this.status  = status;
      this.message = message;  
    }
    
    //--------------------------------------------------------------------------
    // Accessors / modifiers
    
    public function get extension( ) : String
    {
      return _extension;
    }
    
    public function set extension( value : String ) : void
    {
      _extension = value;
    }
    
    public function get status( ) : String
    {
      return _status;
    }
    
    public function set status( value : String ) : void
    {
      switch ( value )
      {
        case SUCCESS :
        case NOTICE :
        case ERROR :
        
          _status = value;
          break;
          
        default :
        
          _status = NOTICE;
      }
    }
    
    public function get message( ) : String
    {
      return _message;
    }
    
    public function set message( value : String ) : void
    {
      _message = ( value != null ? value : '' );
    }
  }
}