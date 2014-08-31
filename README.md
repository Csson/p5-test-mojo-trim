# NAME

Test::Mojo::Trim - Test::Mojo expanded

# SYNOPSIS

    use Mojo::Base -strict;
    use Mojolicious::Lite;
    use Test::More;
    use Test::Mojo::Trim;

    my $test = Test::Mojo::Trim->new;

    get '/test_1';
    get '/test_2';

    my $compared_to = qq{ <div><h1>Header</h1><p>A paragraph.</p></div> };

    $test->get_ok('/test_1')->status_is(200)->trimmed_content_is($compared_to);

    $test->get_ok('/test_2')->status_is(200)->trimmed_all_content_is($compared_to);
    
    done_testing();

    __DATA__
    @@ the_test.html.ep
    <div>
        <h1>Header</h1>
        <p>A paragraph.</p>
    </div>

    @@ the_second_test.html.ep
    <div>
        <h1>    Header    </h1>
        <p>  A paragraph.   </p>
    </div>

# DESCRIPTIdsafasdfasdfON

Test::Mojo::Trim is an extension to Test::Mojo, that adds a couple of string comparison functions.

# METHODS

[Test::Mojo::Trim](https://metacpan.org/pod/Test::Mojo::Trim) inherits all methods from [Test::Mojo](https://metacpan.org/pod/Test::Mojo) and implements the following new ones.

## trimmed\_content\_is

    $test->get_ok('/test')->trimmed_content_is('<html></html>');

Removes all whitespace between tags from the two strings that are compared. 
That is, if a > and < is separated only by whitespace, that whitespace is removed.

## trimmed\_all\_content\_is

    $test->get_ok('/test')->trimmed_all_content_is('<html></html>');

This is similar to `trimmed_content_is`, except that all whitespace preceeding a <, and all whitespace following a > is removed.

This could have unintended consequenses depending on how your document looks (it doesn't check if the < and > are parts of a `<tag>` or not).

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT

Copyright 2014- Erik Carlsson

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
