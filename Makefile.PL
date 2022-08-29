use strict;
use warnings;

use 5.010_000;

use ExtUtils::MakeMaker;
WriteMakefile(
  NAME             => 'genmail',
  AUTHOR           => 'David Betz <hashref@gmail.com>',
  VERSION_FROM     => 'script/genmail',
  ABSTRACT         => 'Creates a unique "+" email address for Gmail',
  LICENSE          => 'perl',
  MIN_PERL_VERSION => '5.10.0',
  PREREQ_PM        => {
    'Readonly'         => '2.05',
    'Params::Validate' => '1.30',
    'Email::Valid'     => '1.203',
  },
  TEST_REQUIRES => {
    "Test2::V0"    => "0.000060",
    "Test::Script" => "1.29",
  },
  EXE_FILES  => ['script/genmail'],
  META_MERGE => {
    'meta-spec' => { version => 2 },
    resources   => {
      repository => {
        type => 'git',
        url  => 'https://github.com/hashref/perl_generate_plus_gmail_address.git',
        web  => 'https://github.com/hashref/perl_generate_plus_gmail_address',
      },
      bugtracker => { web => 'https://github.com/hashref/perl_generate_plus_gmail_addresst/issues' },
    },
  },
);
