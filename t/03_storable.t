#!/usr/bin/env perl

use strict;
use Test::More;
use Storable qw(retrieve);
use Data::Dumper;

plan tests => 1;

my $hr = retrieve('./blort');
my $empty = {};

is(scalar %{$hr}, scalar %{$empty}, "empty hash");

unlink('./blort');


