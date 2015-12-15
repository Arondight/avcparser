#!/usr/bin/env perl

package main;

use strict;
use warnings;
use 5.010;
use ExtUtils::MakeMaker;

my %parms = (
  NAME          => 'avcparser',
  AUTHOR        => '秦凡东 (Qin Fandong)',
  ABSTRACT      => 'Analyze AVC log of SEAndroid',
  VERSION_FROM  => 'bin/avcparser',

  PM            => {},

  EXE_FILES     => ['bin/avcparser'],

  PREREQ_PM     => {
  },

  #MAN1PODS      => {},
  MAN3PODS      => {},

  dist          => {
    COMPRESS  => 'gzip -9f',
    SUFFIX    => 'gz',
  },

  clean         => {
    FILES     => ''
  },
);

if ($ExtUtils::MakeMaker::VERSION ge '6.46') {
  $parms{META_MERGE} = {
    resources => {
      homepage    => 'https://github.com/Arondight/avcparser',
      bugtracker  => 'https://github.com/Arondight/avcparser/issues',
      license     => 'http://mit-license.org',
      repository  => 'git://github.com/Arondight/avcparser.git',
    }
  };
}

if ($ExtUtils::MakeMaker::VERSION ge '6.48') {
  $parms{MIN_PERL_VERSION} = 5.008008;
}

WriteMakefile %parms;

1;

