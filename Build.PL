
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Moose' => '0',
    'Role::REST::Client' => '0.02',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.30',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Basic Authentication for REST Client Role',
  'dist_author' => [
    'Kaare Rasmussen <kaare at cpan dot net>'
  ],
  'dist_name' => 'Role-REST-Client-Auth-Client',
  'dist_version' => '0.01',
  'license' => 'perl',
  'module_name' => 'Role::REST::Client::Auth::Client',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'MIME::Base64' => '0',
    'Moose::Role' => '0',
    'perl' => '5.010'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
