<?php
/**
 * <pre>
 * Invision Power Services
 * IP.Board v3.4.6
 * RSS output functionality
 * Last Updated: $Date: 2013-10-16 12:57:41 -0400 (Wed, 16 Oct 2013) $
 * </pre>
 *
 * @author 		$Author: AndyMillne $
 * @copyright	(c) 2001 - 2009 Invision Power Services, Inc.
 * @license		http://www.invisionpower.com/company/standards.php#license
 * @package		IP.Board
 * @subpackage	Core
 * @link		http://www.invisionpower.com
 * @since		Friday 18th March 2005
 * @version		$Revision: 12380 $
 */

if ( ! defined( 'IN_IPB' ) )
{
	print "<h1>Incorrect access</h1>You cannot access this file directly. If you have recently upgraded, make sure you upgraded all the relevant files.";
	exit();
}

class public_core_global_rss extends ipsCommand
{
	/**
	 * XML document content
	 *
	 * @var		string			XML document content
	 */
	protected $to_print			= '';

	/**
	 * Class entry point
	 *
	 * @param	object		Registry reference
	 * @return	@e void		[Outputs to screen/redirects]
	 */
	public function doExecute( ipsRegistry $registry )
	{
		//-----------------------------------------
		// INIT
		//-----------------------------------------
		
		if ( $this->request['j_do'] )
		{
			$this->request['do'] = $this->request['j_do'];
		}
		
		//-----------------------------------------
		// We offline?
		//-----------------------------------------
		
		if( $this->settings['board_offline'] )
		{
			if ( isset( $_SERVER['SERVER_PROTOCOL'] ) AND strstr( $_SERVER['SERVER_PROTOCOL'], '/1.0' ) )
			{
				header("HTTP/1.0 503 Service Temporarily Unavailable");
			}
			else
			{
				header("HTTP/1.1 503 Service Temporarily Unavailable");
			}
			header('Content-Type: text/html; charset=' . IPS_DOC_CHAR_SET);
			print $this->lang->words['rss_board_offline'];
			exit();
		}
		
		//-----------------------------------------
		// Grab the plugin
		//-----------------------------------------
		
		$type	= 'forums';
		
		if( $this->request['type'] )
		{
			if( IPSLib::appIsInstalled( IPSText::alphanumericalClean( $this->request['type'] ) ) )
			{
				if( is_file( IPSLib::getAppDir( IPSText::alphanumericalClean( $this->request['type'] ) ) . '/extensions/rssOutput.php' ) )
				{
					$type = IPSText::alphanumericalClean( $this->request['type'] );
				}
			}
		}

		//-----------------------------------------
		// And grab the content
		//-----------------------------------------
		
		if( IPSLib::appIsInstalled($type) )
		{
			$classToLoad	= IPSLib::loadLibrary( IPSLib::getAppDir( $type ) . '/extensions/rssOutput.php', 'rss_output_'.$type, $type );
			$rss_library	= new $classToLoad( $this->registry );
			
			$this->to_print	= $rss_library->returnRSSDocument();
			$expires		= $rss_library->grabExpiryDate();
		}
		
		//-----------------------------------------
		// No output?
		//-----------------------------------------
		
		if( !$this->to_print )
		{
			if ( isset( $_SERVER['SERVER_PROTOCOL'] ) AND strstr( $_SERVER['SERVER_PROTOCOL'], '/1.0' ) )
			{
				header("HTTP/1.0 503 Service Temporarily Unavailable");
			}
			else
			{
				header("HTTP/1.1 503 Service Temporarily Unavailable");
			}
			
			print $this->lang->words['rssappoffline'];
			exit();
		}
		
		//-----------------------------------------
		// Then output
		//-----------------------------------------
		
		@header( 'Content-Type: text/xml; charset=' . IPS_DOC_CHAR_SET );
		@header( 'Expires: ' . gmstrftime( '%c', $expires ) . ' GMT' );
		@header( 'Cache-Control: must-revalidate, post-check=0, pre-check=0' );
		@header( 'Pragma: public' );
		print $this->to_print;
		exit();
	}
}