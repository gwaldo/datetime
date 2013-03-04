#! /usr/bin/env perl

use strict;
use warnings;

use DateTime;

my $today = DateTime->now( time_zone => 'local' );

my $timeOfDay		= $today->hour() . $today->minute();
my $yy_today		= $today->strftime( '%y%m%d' );
my $yyyy_today		= $today->ymd('');
my $yy_yesterday	= DateTime->now->subtract( days => 1)->strftime( '%y%m%d' );
my $yyyy_yesterday	= DateTime->now->subtract( days => 1)->strftime( '%Y%m%d' );

my $datetime		= $yyyy_today . "_" . $today->hour() . $today->minute() . $today->second();

print $datetime . "\n";

# # OR...
#
# use POSIX qw(strftime);
#
# print "The time is " . fnDateTime() .".  Have a nice day\n\n";
#
# sub fnDateTime
# {
	# strftime "%Y%m%d_%H%M%S", localtime;
# }


