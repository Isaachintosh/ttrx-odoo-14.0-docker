[options]
# addons_path
Not all addons folders are targeted into this addons path, it was made targeting local server/container performance.
If you want do include other folders, just right-click at the folder name >> choose "Copy Path" >> paste at the end of the addons_path line.
Always remember to separate the addons paths with comma (,) to the odoo server correctly read and load its addons modules.

example: 
        
    addons_path = /usr/lib/python3/dist-packages/odoo/addons,(...),(...)

# admin_passwd
admin_password is the Master Password used by the Odoo Framework to perform database actions, as create, drop, backup, duplicate or restore databases

example: 
        
    admin_passwd = admin@2022

# geoip_database
Path to save Geolocation IP Databases, if it is enabled.
Geolocation IP Databases allow you to determine your website visitor's location. 
These databases of IP addresses contain the latitude and longitude of a particular IP address. 
So when you look up an IP address, you are provided with the pair of coordinates that are the 'origin' of that IP address.

example:
        
    geoip_database = /usr/share/GeoIP/GeoLite2-City.mmdb

# csv_internal_sep
internal separator char to define columns intervals in csv files

example:
        
    csv_internal_sep

# data_dir
Specifies the path to the directory where the data related Odoo like filestore is stored.

example:
        
    data_dir = /var/lib/odoo

# db_host
Specify the database host (default localhost).

example:
        
    db_host = db

# db_maxconn
Specifies the maximum number of physical connections to PostgreSQL.

example:
        
    db_maxconn = 64

# db_name
Specifies the database name.
False is set by default.
If we specify any database name, we can only see that database in the Odoo database selector and manager.

example:

    db_name = False

# db_password
Specifies the database password for db_user. The default value is None.

example:

    db_password = odoo

# db_user
Specifies the database user name. The default value is None.

example:

    db_user = odoo

# db_port
Specifies the database port. The default value is None.

example:

    db_port = 5432

# dbfilter
Filters the database using the REGEXP.

example:

    dbfilter = ^.*$
    (or)
    dbfilter = ^database-name*$

# db_sslmode
Control the SSL security of the connection between Odoo and PostgreSQL. 
Value should be one of ‘disable’, ‘allow’, ‘prefer’, ‘require’, ‘verify-ca’ or ‘verify-full’ 
Default value is ‘prefer’

example:

    db_sslmode = prefer

# db_template
DataError: new encoding (UTF8) is incompatible with the encoding of the 
template database (SQL_ASCII) HINT: Use the same encoding as in the template 
database, or use template0 as template.

example:

    db_template = template0

# http_enable
used to enable or unable the http support
To run cron jobs for an Odoo deployment as a WSGI application requires
1. A classical Odoo (run via odoo-bin)
2. Connected to the database in which cron jobs have to be run (via odoo-bin -d)
3. Which should not be exposed to the network. 
   To ensure cron runners are not network-accessible, it is possible to disable the built-in HTTP server entirely 
   with odoo-bin --no-http or setting # http_enable

example:

    http_enable = True

# http_interface
Listen interface address for HTTP services. Keep empty to listen on all interfaces (0.0.0.0)

example:

    http_interface = 192.168.0.15

# http_port
Specifies the HTTP port for Odoo Server

example:

    http_port = 8069

# limit_memory_hard
Hard limit on virtual memory, any worker exceeding the limit will be 
immediately killed without waiting for the end of the current request 
processing.
Not sure of the reason but if this is set lower that 1.3GB then print jobs
using PDF does not work. We are unsure why but this was the lowest amount
for it to work.

example:

    limit_memory_hard = 2684354560

# limit_memory_soft
Maximum allowed virtual memory per worker. If the limit is exceeded, the 
worker is killed and recycled at the end of the current request.

example:

    limit_memory_soft = 2147483648

# limit_request
Number of requests a worker will process before being recycled and restarted.

example:

    limit_request = 8192

# limit_time_cpu
Prevents the worker from using more than <strong>limit</strong> CPU seconds for each 
request. If the limit is exceeded, the worker is killed

example: 

    limit_time_cpu = 6000

# limit_time_real
Prevents the worker from taking longer than <strong>limit</strong> seconds to process a 
request. If the limit is exceeded, the worker is killed.

example:

    limit_time_real = 12000

# list_db
True/ False. If False hides the database list.

example:

    list_db = True

# log_db
True/False. If True, also write log to the 'ir_logging' table in the database.

example:

    log_db = True

# log_handler
Specifies a value pair from the list of 'module:log_level' pairs. 
The default value is ':INFO', which means all modules' default logging level is 'INFO'

example:

    log_handler = :INFO


# log_level
We can assign any of these values; info, debug_rpc, warn, test, critical, debug_sql, error, debug, debug_rpc_answer.

example:

    log_level = debug

# longpolling_port
Specifies the TCP port used for long-polling connections in multiprocessing or gevent mode.
Default value is 8072. It is not used in the default mode(threaded mode).

example:

    longpolling_port = 8072

# import_partial
Use this for big data importation, if it crashes you will be able to continue
at the current state. Provide a filename to store intermediate importation states.

example:

    import_partial = database-file-name.zip

# limit_time_real_cron
Prevents the cron from taking longer than <strong>limit</strong> seconds to process a 
request. If the limit is exceeded, the worker is killed.
Value -1 is used to not kill the cron

example:

    limit_time_real_cron = -1

# logfile
The log filename. If not set, use stdout.

example:

    logfile = stdout

# max_cron_threads
number of workers dedicated to cron jobs. Defaults to 2. The workers are 
threads in multithreading mode and processes in multiprocessing mode.

example:

    max_cron_threads = 2

# osv_memory_age_limit
Force a limit on the maximum age of records kept in the virtual osv_memory 
tables. This is a decimal value expressed in hours, and the default is 1 hour.

example:

    osv_memory_age_limit = False

# osv_memory_count_limit
Force a limit on the maximum number of records kept in the virtual osv_memory
tables. The default is False, which means no count-based limit.

example:

    osv_memory_count_limit = False

# pidfile
The file where the server pid will be stored (default False).
We are letting the init script create the pid

example:

    pidfile = False

# proxy_mode
Set to True if you are deploying your App behind a proxy 
<br/>
e.g. Apache using mod_proxy. <strong>--proxy_mode</strong> added, using Werkzeug ProxyFix class. 
<br/><br/>
For security reasons, if odoo use a reverse proxy it's important for Odoo to make sure the <strong>proxy_mode</strong> parameter is set to True. 
<br/>
The reason for this is that, when Nginx acts as a proxy, all request will appear to come from the server itself instead of the remote IP address. 
<br/><br/>
Setting the X-Forwarded-For header in the proxy and enabling <strong>proxy_mode</strong> solves that. 
<br/>
But enabling <strong>proxy_mode</strong> without forcing this header at the proxy level would allow anyone to spoof their remote address. 
<br/>
Although enables when sending any email, it will leave the internal port number from the link if <strong>proxy_mode</strong> is on.

example:

    proxy_mode = False

# reverse_proxy
True or False, it is used if Odoo is Working with Nginx, Default Value is False.

example:

    reverse_proxy = False

# server_wide_modules
Comma-separated list of server-wide modules, # default=web

example:

    server_wide_modules = base,web

# screenshots
Specify directory where to write screenshots when an HttpCase.browser_js test fails.
It defaults to /tmp/odoo_tests/db_name/screenshots

example:

    screenshots = /tmp/odoo_tests

# syslog
Send the log to the syslog server
True/False logs to the system's event logger: syslog

example:

    syslog = False

# translate_modules
 specify modules to export. Use in combination with --i18n-export

example:

    translate_modules = ['all']

# test_enable
Enable YAML and unit tests.

example:

    test_enable = True

# test_file
Launch a python or YML test file.
Default value is False

example:

    test_file = sale-to-invoice.yml,inbound-shipments.yml

# test_tags
Tagname customization for unit tests
further infos about odoo test, see the link below:

https://github.com/katholiek-onderwijs-vlaanderen/odoutils

example:

    test_tags = TEST
    (or)
    test_tags = None

# unaccent
Use the unaccent function provided by the database when available.
Unaccent is a text search dictionary that removes accents (diacritic signs) from lexemes. 
It's a filtering dictionary, which means its output is always passed to the next dictionary (if any), 
unlike the normal behavior of dictionaries. This allows accent-insensitive processing for full text search.

# upgrade_path
specify an additional upgrade path.

example:

    upgrade_path = /usr/lib/python3/dist-packages/odoo/extra-addons/general
    (or)
    upgrade_path = /usr/lib/python3/dist-packages/odoo/extra-addons/customers/[client-name-folder]

# without_demo
Disable loading demo data for modules to be installed (comma-separated, use 
"all" for all modules). Default is none

example:

    without_demo = True

# workers
Specify the number of workers, 0 disable prefork mode.
if count is not 0 , enables multiprocessing and sets up the
specified number of HTTP workers (sub-processes processing HTTP and RPC 
requests). TKL Default is 0

example:

    workers = 2

# pg_path
Path to your PostgreSQL binaries

example:

    pg_path = /usr/bin/psql

# screencasts
Enable screencasts and specify directory where to write screencasts files.
The ffmpeg utility needs to be installed to encode frames into a video file. 
Otherwise frames will be kept instead of the video file.

example:

    screencasts = /opt/screencasts

# email_from
 Specify the SMTP email address for sending email

 example:

    email_from = None
    (or)
    email_from = foo@bar.com

# smtp_password
Specify the SMTP password for sending email (default False).

example:

    smtp_password = False
    (or)
    smtp_password = test@01234

# smtp_port
Specify the SMTP port

example:

    smtp_port = 583

# smtp_server
Specify the SMTP server for sending email (default localhost).

example:

    smtp_server = localhost

# smtp_ssl
if True, SMTP connections will be encrypted with SSL (STARTTLS)

example:

    smtp_ssl = False

# smtp_user
Specify the SMTP user for sending email (default False).

example:

    smtp_user = False
    (or)
    smtp_user = foo@bar.com

