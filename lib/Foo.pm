package Foo;

use strict;
use warnings;

sub bar {
    die "Must provide a parameter" unless @_;
}

1;
