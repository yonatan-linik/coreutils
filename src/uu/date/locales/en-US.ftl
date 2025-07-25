date-about =
    Print or set the system date and time

date-usage =
    date [OPTION]... [+FORMAT]...
    date [OPTION]... [MMDDhhmm[[CC]YY][.ss]]

    FORMAT controls the output.  Interpreted sequences are:
    { "| Sequence | Description                                                          | Example                |" }
    { "| -------- | -------------------------------------------------------------------- | ---------------------- |" }
    { "| %%       | a literal %                                                          | %                      |" }
    { "| %a       | locale's abbreviated weekday name                                    | Sun                    |" }
    { "| %A       | locale's full weekday name                                           | Sunday                 |" }
    { "| %b       | locale's abbreviated month name                                      | Jan                    |" }
    { "| %B       | locale's full month name                                             | January                |" }
    { "| %c       | locale's date and time                                               | Thu Mar 3 23:05:25 2005|" }
    { "| %C       | century; like %Y, except omit last two digits                        | 20                     |" }
    { "| %d       | day of month                                                         | 01                     |" }
    { "| %D       | date; same as %m/%d/%y                                               | 12/31/99               |" }
    { "| %e       | day of month, space padded; same as %_d                              | 3                      |" }
    { "| %F       | full date; same as %Y-%m-%d                                          | 2005-03-03             |" }
    { "| %g       | last two digits of year of ISO week number (see %G)                  | 05                     |" }
    { "| %G       | year of ISO week number (see %V); normally useful only with %V       | 2005                   |" }
    { "| %h       | same as %b                                                           | Jan                    |" }
    { "| %H       | hour (00..23)                                                        | 23                     |" }
    { "| %I       | hour (01..12)                                                        | 11                     |" }
    { "| %j       | day of year (001..366)                                               | 062                    |" }
    { "| %k       | hour, space padded ( 0..23); same as %_H                             |  3                     |" }
    { "| %l       | hour, space padded ( 1..12); same as %_I                             |  9                     |" }
    { "| %m       | month (01..12)                                                       | 03                     |" }
    { "| %M       | minute (00..59)                                                      | 30                     |" }
    { "| %n       | a newline                                                            | \\n                     |" }
    { "| %N       | nanoseconds (000000000..999999999)                                   | 123456789              |" }
    { "| %p       | locale's equivalent of either AM or PM; blank if not known           | PM                     |" }
    { "| %P       | like %p, but lower case                                              | pm                     |" }
    { "| %q       | quarter of year (1..4)                                               | 1                      |" }
    { "| %r       | locale's 12-hour clock time                                          | 11:11:04 PM            |" }
    { "| %R       | 24-hour hour and minute; same as %H:%M                               | 23:30                  |" }
    { "| %s       | seconds since 1970-01-01 00:00:00 UTC                                | 1615432800             |" }
    { "| %S       | second (00..60)                                                      | 30                     |" }
    { "| %t       | a tab                                                                | \\t                     |" }
    { "| %T       | time; same as %H:%M:%S                                               | 23:30:30               |" }
    { "| %u       | day of week (1..7); 1 is Monday                                      | 4                      |" }
    { "| %U       | week number of year, with Sunday as first day of week (00..53)       | 10                     |" }
    { "| %V       | ISO week number, with Monday as first day of week (01..53)           | 12                     |" }
    { "| %w       | day of week (0..6); 0 is Sunday                                      | 4                      |" }
    { "| %W       | week number of year, with Monday as first day of week (00..53)       | 11                     |" }
    { "| %x       | locale's date representation                                         | 03/03/2005             |" }
    { "| %X       | locale's time representation                                         | 23:30:30               |" }
    { "| %y       | last two digits of year (00..99)                                     | 05                     |" }
    { "| %Y       | year                                                                 | 2005                   |" }
    { "| %z       | +hhmm numeric time zone                                              | -0400                  |" }
    { "| %:z      | +hh:mm numeric time zone                                             | -04:00                 |" }
    { "| %::z     | +hh:mm:ss numeric time zone                                          | -04:00:00              |" }
    { "| %:::z    | numeric time zone with : to necessary precision                      | -04, +05:30            |" }
    { "| %Z       | alphabetic time zone abbreviation                                    | EDT                    |" }

    By default, date pads numeric fields with zeroes.
    The following optional flags may follow '%':
      { "* `-` (hyphen) do not pad the field" }
      { "* `_` (underscore) pad with spaces" }
      { "* `0` (zero) pad with zeros" }
      { "* `^` use upper case if possible" }
      { "* `#` use opposite case if possible" }
    After any flags comes an optional field width, as a decimal number;
    then an optional modifier, which is either
      { "* `E` to use the locale's alternate representations if available, or" }
      { "* `O` to use the locale's alternate numeric symbols if available." }
    Examples:
      Convert seconds since the epoch (1970-01-01 UTC) to a date

      date --date='@2147483647'

      Show the time on the west coast of the US (use tzselect(1) to find TZ)

      TZ='America/Los_Angeles' date

date-help-date = display time described by STRING, not 'now'
date-help-file = like --date; once for each line of DATEFILE
date-help-iso-8601 = output date/time in ISO 8601 format.
  FMT='date' for date only (the default),
  'hours', 'minutes', 'seconds', or 'ns'
  for date and time to the indicated precision.
  Example: 2006-08-14T02:34:56-06:00
date-help-rfc-email = output date and time in RFC 5322 format.
  Example: Mon, 14 Aug 2006 02:34:56 -0600
date-help-rfc-3339 = output date/time in RFC 3339 format.
  FMT='date', 'seconds', or 'ns'
  for date and time to the indicated precision.
  Example: 2006-08-14 02:34:56-06:00
date-help-debug = annotate the parsed date, and warn about questionable usage to stderr
date-help-reference = display the last modification time of FILE
date-help-set = set time described by STRING
date-help-set-macos = set time described by STRING (not available on mac yet)
date-help-set-redox = set time described by STRING (not available on redox yet)
date-help-universal = print or set Coordinated Universal Time (UTC)

date-error-invalid-date = invalid date '{$date}'
date-error-invalid-format = invalid format '{$format}' ({$error})
date-error-expected-file-got-directory = expected file, got directory '{$path}'
date-error-date-overflow = date overflow '{$date}'
date-error-setting-date-not-supported-macos = setting the date is not supported by macOS
date-error-setting-date-not-supported-redox = setting the date is not supported by Redox
date-error-cannot-set-date = cannot set date
