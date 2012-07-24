#! /usr/bin/env perl

use Win32::OLE;
use POSIX qw(strftime);

print "The time is " . fnDateTime() .".  Have a nice day\n\n";
print "blah, blah, blah\n" . "yackety schmakety\n";

sub fnDateTime
{
	strftime "%Y%m%d_%H%M%S", localtime;
}
