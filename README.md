# NAME

Test::Mojo::Trim - Trim strings for Test::Mojo

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10+-blue.svg" alt="Requires Perl 5.10+" />
    <a href="https://travis-ci.org/Csson/p5-test-mojo-trim"><img src="https://api.travis-ci.org/Csson/p5-test-mojo-trim.svg?branch=master" alt="Travis status" /></a>
    <a href="http://cpants.cpanauthors.org/dist/Test-Mojo-Trim-0.1000"><img src="https://badgedepot.code301.com/badge/kwalitee/Test-Mojo-Trim/0.1000" alt="Distribution kwalitee" /></a>
    <a href="http://matrix.cpantesters.org/?dist=Test-Mojo-Trim%200.1000"><img src="https://badgedepot.code301.com/badge/cpantesters/Test-Mojo-Trim/0.1000" alt="CPAN Testers result" /></a>
    <img src="https://img.shields.io/badge/coverage-68.4%-red.svg" alt="coverage 68.4%" />
    </p>
</div>

# VERSION

Version 0.1000, released 2016-07-22.

# SYNOPSIS

    use Mojo::Base -strict;
    use Mojolicious::Lite;
    use Test::More;
    use Test::Mojo::Trim;

    my $test = Test::Mojo::Trim->new;

    get '/test_1';

    my $compared_to = qq{ <div><h1>Header</h1><p>A paragraph.</p></div> };

    $test->get_ok('/test_1')->status_is(200)->trimmed_content_is($compared_to);

    done_testing();

    __DATA__
    @@ the_test.html.ep
    <div>
        <h1>Header</h1>
        <p>A paragraph.</p>
    </div>

# DESCRIPTION

Test::Mojo::Trim is an extension to Test::Mojo, that adds an additional string comparison function.

# METHODS

[Test::Mojo::Trim](https://metacpan.org/pod/Test::Mojo::Trim) inherits all methods from [Test::Mojo](https://metacpan.org/pod/Test::Mojo) and implements the following new one.

## trimmed\_content\_is

    $test->get_ok('/test')->trimmed_content_is('<html></html>');

Removes all whitespace between tags from the two strings that are compared.
That is, if a > and < is separated only by whitespace, that whitespace is removed.
Any leading or trailing whitespace is also removed.

# SEE ALSO

- [Test::Mojo](https://metacpan.org/pod/Test::Mojo)
- [Test::Mojo::Most](https://metacpan.org/pod/Test::Mojo::Most)

# SOURCE

[https://github.com/Csson/p5-test-mojo-trim](https://github.com/Csson/p5-test-mojo-trim)

# HOMEPAGE

[https://metacpan.org/release/Test-Mojo-Trim](https://metacpan.org/release/Test-Mojo-Trim)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
