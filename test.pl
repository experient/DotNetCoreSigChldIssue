#!/usr/bin/perl -w
use strict;
use warnings;

print "\nDefault SIGCHLD handler:\n";
system("dotnet bin/Debug/netcoreapp2.0/publish/SigChldRepro.dll");

$SIG{CHLD} = "IGNORE";
print "\nIgnored SIGCHLD handler:\n";
system("dotnet bin/Debug/netcoreapp2.0/publish/SigChldRepro.dll");
