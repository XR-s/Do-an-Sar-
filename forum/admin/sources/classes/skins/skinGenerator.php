<?php

/**
 * <pre>
 * Invision Power Services
 * IP.Board v3.4.6
 * Skin Functions
 * Last Updated: $Date: 2011-05-05 12:03:47 +0100 (Thu, 05 May 2011) $
 * </pre>
 *
 * Owner: Matt
 * @author 		$Author: ips_terabyte $
 * @copyright	(c) 2001 - 2009 Invision Power Services, Inc.
 * @license		http://www.invisionpower.com/company/standards.php#license
 * @package		IP.Board
 * @link		http://www.invisionpower.com
 * @since		9th March 2005 11:03
 * @version		$Revision: 8644 $
 *
 */

if ( ! defined( 'IN_IPB' ) )
{
	print "<h1>Incorrect access</h1>You cannot access this file directly. If you have recently upgraded, make sure you upgraded all the relevant files.";
	exit();
}

class skinGenerator extends skinCaching
{
	/**#@+
	 * Registry objects
	 *
	 * @access	protected
	 * @var		object
	 */	
	protected $registry;
	protected $DB;
	protected $settings;
	protected $request;
	protected $lang;
	protected $member;
	protected $memberData;
	protected $cache;
	protected $caches;
	/**#@-*/
	
	
	/**
	 * Constructor
	 *
	 * @access	public
	 * @param	object		Registry object
	 * @return	@e void
	 */
	public function __construct( ipsRegistry $registry )
	{
		/* Make object */
		parent::__construct( $registry );
	}
	
	/**
	 * Return JSON payload URL
	 * @return string Skin Generator URL
	 */
	public function getJsonUrl()
	{
		$inDev = ( IN_DEV ) ? 1 : 0;
		
		//return 'http://ips-skin-gen.invisionpower.com/index.php?v=' . IPB_LONG_VERSION . '&k=' . urlencode( $this->settings['ipb_reg_number'] ) . '&i=' . $inDev;
	}
	
	/**
	 * Delete a user's session
	 * @param int $skinSetId
	 */
	public function convertToFull( $skinSetId )
	{
		/* Current session? */
		$session = $this->getSessionBySkinId( $skinSetId );
		
		if ( $session['sg_member_id'] )
		{
			$this->deleteUserSession( $session['sg_member_id'] );
		}
		
		/* Tweak skin */
		$this->DB->update( 'skin_collections', array( 'set_by_skin_gen' => 0 ), 'set_id=' . $skinSetId );
	}
	
	
	/**
	 * Check to make sure we're GTG ...
	 */
	public function healthCheck()
	{
		$warnings = array();
		
		/* Can write into images */
		if ( ! is_writable( DOC_IPS_ROOT_PATH . PUBLIC_DIRECTORY . '/style_images' ) )
		{
			$warnings[] = 'Cannot write to image directory';
		}
		
		return ( count( $warnings ) ) ? $warnings : true;
	}
	
	/**
	 * Fetches the JSON from the remote server and writes it
	 */
	public function buildLocalJsonCache()
	{
		$json = <<<JSON
var IPS_SKIN_GEN_DATA = {
	"skinGroups": {
		"app_calendar": ["App: Calendar", ["app_calendar_td_selected", "app_calendar_td_hover", "app_calendar_td_blank", "app_calendar_td_today"]],
		"app_gallery": ["App: Gallery", ["albumDetailTable_td"]],
		"global": ["Global Styles", ["body", "a", "content", "desc", "desclighter"]],
		"tables": ["Table Content", ["row1", "row2", "unread", "unreadalt", "tableheader", "tableheader_a", "ipb_table"]],
		"other": ["Other Styles", ["ipsbox", "Bar Header", "postblock", "NoMessages", "fieldsetSubmit", "general_box", "general_box_h3", "ipsboxcontainer", "maintitle", "sideMenuActive", "ipsVerticalTabbed_tabs_li", "ipsVerticalTabbed_tabs_li_a", "ipsVerticalTabbed_tabs_li_a_hover", "ipsVerticalTabbed_tabs_li_active", "ipsfilterbar_item", "ipsfilterbar_active"]],
		"buttons": ["Button Styles", ["but_submit", "but_submit_alt", "but_topic", "but_secondary"]],
		"header": ["Header Elements", ["registerLink", "header", "primarynav", "primarynav_inactive", "primarynav_active", "searchbutton"]],
		"pagination": ["Pagination", ["paginationBackForward", "paginationBackForwardHover", "paginationBackActive"]],
		"sidebar": ["Sidebar", ["ipsSideBlock", "ipsSideBlock_h3"]],
		"profiles": ["Profile Page", ["statusupdate"]],
		"app_blog": ["App: Blog", ["entry_header"]]
	},
	"colorizeGroups": {
		"base": ["app_calendar_td_selected", "app_calendar_td_hover", "app_calendar_td_blank", "app_calendar_td_today", "albumDetailTable_td", "body", "content", "row1", "row2", "unread", "unreadalt", "ipsbox", "Bar Header", "tableheader", "tableheader_a", "postblock", "NoMessages", "but_submit_alt", "fieldsetSubmit", "registerLink", "header", "primarynav", "primarynav_inactive", "primarynav_active", "general_box", "general_box_h3", "ipsboxcontainer", "maintitle", "desc", "desclighter", "ipb_table", "ipsVerticalTabbed_tabs_li", "ipsVerticalTabbed_tabs_li_a", "ipsVerticalTabbed_tabs_li_a_hover", "ipsVerticalTabbed_tabs_li_active", "ipsfilterbar_item", "ipsfilterbar_active", "but_secondary", "paginationBackForward", "ipsSideBlock", "ipsSideBlock_h3", "statusupdate", "entry_header"],
		"text": ["a"],
		"secondary": ["but_submit", "searchbutton", "but_topic"],
		"tertiary": ["sideMenuActive", "paginationBackForwardHover", "paginationBackActive"]
	},
	"classes": {
		"app_calendar_td_selected": ["#calendar_table td.selected", "Calendar Selected Cell", "Used for selected cells in the monthly calendar", {
			"background": ["#E2E9F0", ""],
			"shadow": ["#E2E9F0", ""]
		}],
		"app_calendar_td_hover": ["#calendar_table td.normal:hover", "Calendar Cell Hover", "Used for hovering over cells in the monthly calendar", {
			"background": ["#EDF1F5", ""]
		}],
		"app_calendar_td_blank": ["#calendar_table td.blank", "Calendar Blank Cell", "Used for blank cells in the monthly calendar", {
			"background": ["#dbe2e8", ""],
			"border": ["#dbe2e8", ""]
		}],
		"app_calendar_td_today": ["#calendar_table td.today", "Calendar Today Cell", "Used for todays cell in the monthly calendar", {
			"background": ["#f1f6ec", ""],
			"border": ["#6f8f52", ""],
			"color": ["#6f8f52", ""]
		}],
		"albumDetailTable_td": ["#albumDetailTable td", "Album Detail Table", "Thick border for detail table", {
			"border": ["#ebf0f3", ""]
		}],
		"body": ["html, body", "Body", "The page background", {
			"background": ["#d8dde8", ""],
			"color": ["#5a5a5a", ""]
		}],
		"a": ["a", "Links", "Basic links", {
			"color": ["#225985", ""]
		}],
		"content": ["#content", "Main Content Area", "The area that contains all page content", {
			"background": ["#fff", ""]
		}],
		"row1": [".row1, .post_block.row1", "Table Row 1", "Generic table row color 1", {
			"background": ["#fff", ""]
		}],
		"row2": [".row2, .post_block.row2", "Table Row 2", "Generic table row color 2", {
			"background": ["#f1f6f9", ""]
		}],
		"unread": [".unread", "Unread Row", "Unread row colour", {
			"background": ["#f7fbfc", ""]
		}],
		"unreadalt": [".unread .altrow, .unread.altrow", "Unread Row (Alt)", "Darker version of unread row, used to highlight certain table columns", {
			"background": ["#E2E9F0", ""]
		}],
		"ipsbox": [".ipsBox", "Content Box", "Used to wrap most content sections", {
			"background": ["#ebf0f3", ""]
		}],
		"Bar Header": [".bar", "Bar Header", "Used in post forms, etc", {
			"background": ["#eff4f7", ""]
		}],
		"tableheader": [".header", "Table Header", "Used for table headings", {
			"background": ["#b6c7db", ""],
			"color": ["#1d3652", ""]
		}],
		"tableheader_a": ["body .ipb_table .header a,\tbody .topic_options a", "Table Header Link", "Used for links in table headings", {
			"color": ["#1d3652", ""]
		}],
		"postblock": [".post_block", "Post Block", "An individual post wrapper", {
			"background": ["#fff", ""],
			"border": ["#D6E2EB", ""]
		}],
		"NoMessages": [".no_messages", "No Messages Box", "Box for 'no data' type messages", {
			"background": ["#f6f8fa", ""],
			"border": false
		}],
		"but_submit": [".input_submit", "Submit Button", "The primary button that submits forms", {
			"background": ["#212121", ""],
			"border": ["#5c5c5c", ""],
			"color": ["#fff", ""],
			"boxshadow": ["#5c5c5c", " inset 0 1px 0 0 "]
		}],
		"but_submit_alt": [".input_submit.alt", "Alternate Submit Button", "Secondary buttons for forms", {
			"background": ["#e2e9f0", ""],
			"border": ["#dae2ea", ""],
			"color": ["#464646", ""],
			"boxshadow": ["#eff3f8", " inset 0 1px 0 0 "]
		}],
		"fieldsetSubmit": ["body#ipboard_body fieldset.submit,body#ipboard_body p.submit", "Submit\/Button Strip", "Used in forms where the submit buttons are located", {
			"background": ["#d1ddea", ""]
		}],
		"registerLink": ["#user_navigation #register_link", "Create Account Link", "The create accoun tbutton", {
			"background": ["#7ba60d", ""],
			"border": ["#7ba60d", ""],
			"color": ["#fff", ""],
			"boxshadow": false
		}],
		"header": ["#branding", "Header Bar", "Bar containing logo, global search etc.", {
			"background": ["#0f3854", ""],
			"border": ["#1b3759", ""]
		}],
		"primarynav": ["#primary_nav", "Primary Nav Bar", "Primary navigation bar (with app tabs)", {
			"background": ["#204066", ""]
		}],
		"primarynav_inactive": ["#primary_nav a", "Inactive App Tab", "An inactive tab in the Primary Nav bar", {
			"background": ["#1c3b5f", ""],
			"color": ["#c5d5e2", ""]
		}],
		"primarynav_active": ["#primary_nav .active a", "Active App Tab", "An active tab in the Primary Nav bar", {
			"background": ["#fff", ""],
			"color": ["#0b5794", ""]
		}],
		"searchbutton": ["#search .submit_input", "Search Button", "The submit button for the global search bar", {
			"background": ["#7ba60d", ""],
			"border": ["#7ba60d", ""]
		}],
		"general_box": [".general_box", "General Box Container", "Used to contain contents of general boxes such as used on profile page", {
			"background": ["#fcfcfc", ""]
		}],
		"general_box_h3": [".general_box h3", "General Box Container H3", "Used to contain contents of general boxes title", {
			"background": ["#DBE2EC", ""],
			"color": ["#204066", ""]
		}],
		"ipsboxcontainer": [".ipsBox_container", "Content Box Container", "Used to contain contents of Content Box", {
			"background": ["#fff", ""],
			"border": ["#dbe4ef", ""]
		}],
		"maintitle": [".maintitle", "Main Title", "Bar used for block titles, filter bars etc.", {
			"background": ["#2c5687", ""],
			"color": ["#fff", ""],
			"border": ["#528cbc", ""],
			"boxshadow": ["#528cbc", " inset 0px 1px 0 "]
		}],
		"desc": [".desc, .desc.blend_links a, p.posted_info", "Description text", "Used for small text throughout", {
			"color": ["#777777", ""]
		}],
		"desclighter": [".desc.lighter, .desc.lighter.blend_links a", "Description text (lighter)", "Used for small lighter text throughout", {
			"color": ["#a4a4a4", ""]
		}],
		"ipb_table": ["table.ipb_table td", "Tabular Data Rows", "Used where there is tabular data", {
			"border": ["#f3f3f3", ""]
		}],
		"sideMenuActive": [".ipsSideMenu ul li.active a", "Side Menu Active", "A selected entry in a side menu", {
			"background": ["#af286d", ""],
			"color": ["#fff", ""]
		}],
		"ipsVerticalTabbed_tabs_li": [".ipsVerticalTabbed_tabs li", "Vertical Tab", "Used on profile page and other UserCP when veritcal tabs are needed", {
			"background": ["#f6f8fb", ""],
			"color": ["#808080", ""],
			"border": ["#DBE4EF", ""]
		}],
		"ipsVerticalTabbed_tabs_li_a": [".ipsVerticalTabbed_tabs li a", "Vertical Tab Link", "Link on a vertical tab", {
			"color": ["#8d8d8d", ""]
		}],
		"ipsVerticalTabbed_tabs_li_a_hover": [".ipsVerticalTabbed_tabs li a:hover", "Vertical Tab Link Hover", "Hover over a vertical tab", {
			"background": ["#eaeff5", ""],
			"color": ["#808080", ""]
		}],
		"ipsVerticalTabbed_tabs_li_active": [".ipsVerticalTabbed_tabs li.active a", "Vertical Tab Active", "An active tab", {
			"background": ["#fff", ""],
			"color": ["#353535", ""],
			"border": ["#fff", ""]
		}],
		"ipsfilterbar_item": [".ipsFilterbar li a", "Filter Bar Item", "Used for tabs in a filter bar", {
			"color": ["#fff", ""]
		}],
		"ipsfilterbar_active": [".ipsFilterbar li.active a", "Filter Bar Active Item", "Used for active tabs in a filter bar", {
			"background": ["#244156", ""],
			"color": ["#fff", ""]
		}],
		"but_topic": [".topic_buttons li.important a, .topic_buttons li.important span, .ipsButton .important,.topic_buttons li a, .topic_buttons li span, .ipsButton", "Primary Button", "Button used for main actions, such as New Topic", {
			"background": ["#212121", ""],
			"border": ["#212121", ""],
			"color": ["#fff", ""],
			"boxshadow": ["#5c5c5c", " inset 0 1px 0 0 "]
		}],
		"but_secondary": [".ipsButton_secondary", "Secondary Button", "Secondary button, used normally for Follow actions", {
			"background": ["#f6f6f6", ""],
			"border": ["#dbdbdb", ""],
			"color": ["#616161", ""]
		}],
		"paginationBackForward": [".pagination .back a,.pagination .forward a", "Pagination Next\/Foward", "Next, back, forward buttons", {
			"background": ["#eaeaea", ""],
			"color": ["#5a5a5a", ""]
		}],
		"paginationBackForwardHover": [".pagination .back a:hover,\t.pagination .forward a:hover", "Pagination Next\/Foward Hover", "Next, back, forward buttons when hovered", {
			"background": ["#af286d", ""],
			"color": ["#fff", ""]
		}],
		"paginationBackActive": [".pagination .pages li.active", "Pagination Page Active", "Selected page", {
			"background": ["#7BA60D", ""],
			"color": ["#fff", ""]
		}],
		"ipsSideBlock": [".ipsSideBlock", "Sidebar Block", "Sidebar block background color", {
			"background": ["#F7FBFC", ""]
		}],
		"ipsSideBlock_h3": [".ipsSideBlock h3", "Sidebar Block Header", "Sidebar block Header", {
			"background": ["#DBE2EC", ""],
			"color": ["#204066", ""]
		}],
		"statusupdate": [".status_update", "Status Update Block", "Status update background", {
			"background": ["#71a5c9", ""],
			"color": ["#fff", ""]
		}],
		"entry_header": [".entry.featured .entry_header, .entry.featured .entry_footer", "Blog Entry Header\/Footer\/Featured", "Header for blog entry", {
			"background": ["#f5faf7", ""]
		}]
	}
}
JSON;
		
		$cacheFile = IPS_CACHE_PATH . 'cache/skinGenJsonCache.js';
		
		if ( file_exists( $cacheFile ) )
		{
			@unlink( $cacheFile );
		}
		
		file_put_contents( $cacheFile, $json );
		@chmod( $cacheFile, 0777 );
	
		return true;
	}
	
	/**
	 * Saves the skin and that
	 * @param	array	css, storedSettings, storedClasses
	 * @param	int		Member Id
	 */
	public function save( array $data, $memberId )
	{
		$session = $this->getUserSession( $memberId );
		
		if ( empty( $session['sg_session_id'] ) )
		{
			throw new Exception( 'NO_SESSION_FOUND' );
		}
		
		/* Update session */
		$this->DB->update( 'skin_collections', array( 'set_skin_gen_data' => serialize( $data ) ), 'set_id=\'' . $session['sg_skin_set_id'] . '\''  );
		
		/* Write CSS_EXISTS extras css */
		try
		{
			$this->saveCSSFromAdd( $session['sg_skin_set_id'], trim( $data['css'] ), 'ipb_skingen', 999, '', 'core' );
		}
		catch( Exception $e )
		{
			if ( $e->getMessage() == 'CSS_EXISTS' )
			{
				$css = $this->fetchCSS( $session['sg_skin_set_id'] );
				$this->saveCSSFromEdit( $css['ipb_skingen']['css_id'], $session['sg_skin_set_id'], trim( $data['css'] ), 'ipb_skingen', 999, '', 'core' );
			}
		}
		
		/* Update replacements */
		$replacements = $this->fetchReplacements( $session['sg_skin_set_id'] );
		
		/* Set transparent logo */
		$this->saveReplacementFromEdit( $replacements['logo_img']['replacement_id'], $session['sg_skin_set_id'], '{style_image_url}/logo_transparent.png', 'logo_img' );
		
		/* Flag for rebuild */
		$this->flagSetForRecache( $session['sg_skin_set_id'] );
		
		/* Delete session */
		$this->deleteUserSession( $memberId );
	}
	
	/**
	 * Resets the member's skin
	 * @param	int		Member Id
	 */
	public function resetMemberAndSwitchSkin( $memberId )
	{
		$session = $this->getUserSession( $memberId );
		
		if ( empty( $session['sg_session_id'] ) )
		{
			throw new Exception( 'NO_SESSION_FOUND' );
		}
		
		IPSMember::save( $memberId, array( 'core' => array( 'bw_using_skin_gen' => 0, 'skin' => $session['sg_skin_set_id'] ) ) );
	}
	
	/**
	 * Set a user's session
	 * @param int $memberId
	 * @param array 
	 */
	public function setUserSession( $memberId, $data )
	{
		if ( ! empty( $memberId ) AND ! empty( $data['skin_set_id'] ) )
		{
			$sessionKey = md5( uniqid() );
			
			$this->deleteUserSession( $memberId );
			
			if ( empty( $data['set_skin_gen_data'] ) )
			{
				$skin = $this->fetchSkinData( $data['skin_set_id'] );
				
				$data['set_skin_gen_data'] = $skin['set_skin_gen_data'];
			}
			
			$this->DB->insert( 'skin_generator_sessions', array( 'sg_session_id'  => $sessionKey,
																 'sg_member_id'   => $memberId,
																 'sg_skin_set_id' => $data['skin_set_id'],
																 'sg_date_start'  => IPS_UNIX_TIME_NOW,
																 'sg_data'		  => ( is_array( $data ) ) ? serialize( $data ) : $data  ) );
			
			/* Flag user */
			IPSMember::save( $memberId, array( 'core' => array( 'bw_using_skin_gen' => 1 ) ) );
			
			return $sessionKey;
		}
		else
		{		
			return false;
		}
	}
	
	/**
	 * Delete a user's session
	 * @param int $memberId
	 * @param null 
	 */
	public function deleteUserSession( $memberId )
	{
		$this->DB->delete( 'skin_generator_sessions', 'sg_member_id=' . intval( $memberId ) );
		
		/* Flag user */
		IPSMember::save( $memberId, array( 'core' => array( 'bw_using_skin_gen' => 0 ) ) );
	}
	
	/**
	 * Get a user's session
	 * @param int $memberId
	 */
	public function getUserSession( $memberId )
	{
		$session = $this->DB->buildAndFetch( array( 'select' => '*',
													'from'   => 'skin_generator_sessions',
													'where'  => 'sg_member_id=' . intval( $memberId ) ) );
		
		if ( ! empty( $session['sg_session_id'] ) )
		{
			if ( IPSLib::isSerialized( $session['sg_data'] ) )
			{
				$session['sg_data_array'] = unserialize( $session['sg_data'] );
				
				if ( IPSLib::isSerialized( $session['sg_data_array']['set_skin_gen_data'] ) )
				{
					$session['skin_gen_data'] = unserialize( $session['sg_data_array']['set_skin_gen_data'] );
				}
			}
				
			return $session;
		}
		else
		{
			/* Prevent this from loading again */
			IPSMember::save( $memberId, array( 'core' => array( 'bw_using_skin_gen' => 0 ) ) );
			
			return false;
		}
	}
	
	/**
	 * Get a user's session
	 * @param int $skinSetId
	 */
	public function getSessionBySkinId( $skinSetId )
	{
		$session = $this->DB->buildAndFetch( array( 'select' => '*',
													'from'   => 'skin_generator_sessions',
													'where'  => 'sg_skin_set_id=' . intval( $skinSetId ) ) );
		
		if ( ! empty( $session['sg_session_id'] ) )
		{
			if ( IPSLib::isSerialized( $session['sg_data'] ) )
			{
				$session['sg_data_array'] = unserialize( $session['sg_data'] );
				
				if ( IPSLib::isSerialized( $session['sg_data_array']['set_skin_gen_data'] ) )
				{
					$session['skin_gen_data'] = unserialize( $session['sg_data_array']['set_skin_gen_data'] );
				}
			}
				
			return $session;
		}
		else
		{
			return false;
		}
	}
	
	
}