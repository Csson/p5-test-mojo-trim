use strict;
use Test::More;

use Test::Mojo::Trim;

my $test = Test::Mojo::Trim->new;

ok $test->trim(before_trim()), after_trim(), 'Correctly trimmed string';

done_testing;

sub before_trim {
    return qq{ This  string

 contains  untrimmed\t \twhitespace};
}

sub after_trim {
    return qq{ This string contains untrimmed whitespace};
}
