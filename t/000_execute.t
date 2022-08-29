#!/usr/bin/env perl

use strict;
use warnings;

use Test2::V0;
use Test::Script;

my $SCRIPT_PATH     = './script/genmail';
my $CURRENT_VERSION = "v1.0.0\n";

plan(7);

script_compiles( $SCRIPT_PATH, 'script compiles' );

# Test Command Line Options
script_runs( [ $SCRIPT_PATH, '-h' ], '-h option works' );
script_runs( [ $SCRIPT_PATH, '-v' ], '-v option works' );
script_stdout_is( $CURRENT_VERSION, '-v option returns current version' );
script_fails( [ $SCRIPT_PATH, '-e' ], { exit => 1 }, '-e fails with no email address' );
script_runs( [ $SCRIPT_PATH, '-e', 'foo@bar.com' ], '-e option works' );
script_stdout_like( qr/^foo\+\d+\@bar.com\n$/, 'vaild output' );

done_testing();
