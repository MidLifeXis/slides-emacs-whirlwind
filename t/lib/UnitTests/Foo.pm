package UnitTests::Foo;

use strict;
use warnings;

use base 'Test::Class';

use Test::Most;

sub use_test : Test( startup=>1 ) {
    use_ok('Foo');
}

sub this_is_a_test : Test {
    is(1+1, 2);
}

sub this_is_a_failed_test : Test {
    fail;
}

sub bar__given_a_parameter__lives : Test {
    lives_ok( sub { Foo::bar( 1 ) } );
}

sub bar__not_given_a_parameter__dies : Test {
    dies_ok( sub { Foo::bar() } );
}

1;

