<?php
/**
* The base configurations of the WordPress.
*
* This file has the following configurations: MySQL settings, Table Prefix,
* Secret Keys, WordPress Language, and ABSPATH. You can find more information
* by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
* wp-config.php} Codex page. You can get the MySQL settings from your web host.
*
* This file is used by the wp-config.php creation script during the
* installation. You don't have to use the web site, you can just copy this file
* to “wp-config.php” and fill in the values.
*
* @package WordPress
*/

// ** MySQL settings – You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '${DB_NAME}');

/** MySQL database username */
define('DB_USER', '${USER}');

/** MySQL database password */
define('DB_PASSWORD', '${WP_PASSWORD}');

/** MySQL hostname */
define('DB_HOST', 'mariadb');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
* Authentication Unique Keys and Salts.
*
* Change these to different unique phrases!
* You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
* You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
*
* @since 2.6.0
*/
define('AUTH_KEY',         '?$KfK4t6L&Wk)g3)-ORW0br-,*l;+|Q6aRyTsAM4Ta3`<u!J/mUngf/:PN4C[bb5');
define('SECURE_AUTH_KEY',  'KL/sM2@H}XA-<OHOM4`zs(NWK-1n2f8!94JjdkqS-J y~.BVgW1;6wm8]5H:P1^M');
define('LOGGED_IN_KEY',    'a#?-/:RreI9s!sW+*K+U&K~1q@?h;X*GKfg!jGn[+{w[jCOI93T-dLAZ!av&@ uX');
define('NONCE_KEY',        'lx|_YVK*bCd,BRR@P d/KYB6$Idbe`Po8m~+V*|4&NAG-8e+gNi,L6JZIwUoQ;`*');
define('AUTH_SALT',        '$>4v&l5,T6y%ny`k3`,`$?SZ|FaK;GgNBm__-gm2yD:9|/R}glxN;v$<%||J-r}t');
define('SECURE_AUTH_SALT', 'U21PWXm0y-+1kXm?q}9%]:ekzC}<i2f-%_n]gEJ_suc#X,w.+Bv/ pEF^y-6$X.2');
define('LOGGED_IN_SALT',   'ob|RGF#I)M^:jjDr>eyq{O3TTQ5a*hetcv~Py(^Hma3 c8`76k6B)@ix%KOx|J|S');
define('NONCE_SALT',       'A?bpn2k_H& *h{t0sH-mMxAu|I7~;]l50Km/eU-5KQYQUiGn4Ig|6eZ3`Q-&-5B?');

/**#@-*/

/**
* WordPress Database Table prefix.
*
* You can have multiple installations in one database if you give each a unique
* prefix. Only numbers, letters, and underscores please!
*/
$table_prefix  = 'wp_';

/**
* WordPress Localized Language, defaults to English.
*
* Change this to localize WordPress. A corresponding MO file for the chosen
* language must be installed to wp-content/languages. For example, install
* de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
* language support.
*/
define('WPLANG', ”);

/**
* For developers: WordPress debugging mode.
*
* Change this to true to enable the display of notices during development.
* It is strongly recommended that plugin and theme developers use WP_DEBUG
* in their development environments.
*/
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
