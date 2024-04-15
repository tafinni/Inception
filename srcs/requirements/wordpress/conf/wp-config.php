<?php
/** The base configuration for WordPress
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 */

/** The name of the database for WordPress */
define('DB_NAME', 'database_name_here');

/** MySQL database username */
define('DB_USER', 'username_here');

/** MySQL database password */
define('DB_PASSWORD', 'password_here');

/** MySQL hostname */
define('DB_HOST', 'mariadb');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');


/** Authentication Unique Keys and Salts.
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 */

 define('AUTH_KEY',         '@mk5[e*`n]bl}wW4uh.Op2nNKUCif13HT+Edo4bt:`;-6.$7=EGY](N~J-0QU88k');
 define('SECURE_AUTH_KEY',  'Y?8_XF&eC$M+=F5t:.l79cv=)y,3%Kug5tDbGLfq/qk U4~+B>GKh>SGD.Q%e(v}');
 define('LOGGED_IN_KEY',    'L +Hx6E2PC;@xRe0yVJX}NDqs~@y%9cS$!{sYZ*s7X|0O-a#%#i2smYri?_j6.N]');
 define('NONCE_KEY',        'TW/Zg$tbKz#_|JcmWtnp0>G0kl=)q5>d;3%|Sg{XTUOz]4tyyTkf&6-`o7J]4?Z?');
 define('AUTH_SALT',        '[.EV[WAJh}KO38g}oJ$>$o9toiG98@U8YY|.Lhfc%Ft16|UEh4iwG?+/+YVPL)U<');
 define('SECURE_AUTH_SALT', 'M92-$XnR!Sc*G|<iE1[UY7tUnOTES9>yyo8-w<5-Uei_zv%jCeu;6$<T)Jx~GPO|');
 define('LOGGED_IN_SALT',   'rk9V=:*W^o3||~/a2 w,-YroixZ~-pPFaQ{e|.`*AS4~;O}x.E/|S;X%vgK:f*{x');
 define('NONCE_SALT',       'j-(}Y|TSF*4q-yM]?K7D ||~|:`~_9/|KnTXW<LQguLSE(0&=Tybv-6iOW[K Yj ');

/** WordPress Database Table prefix. */
$table_prefix = 'wp_';

/** For developers: WordPress debugging mode. */
define( 'WP_DEBUG', false );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>
