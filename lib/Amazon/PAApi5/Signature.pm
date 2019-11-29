package Amazon::PAApi5::Signature;
use strict;
use warnings;
use Carp qw/croak/;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    my $args  = shift || +{};

    bless $args, $class;
}

1;

__END__

=encoding UTF-8

=head1 NAME

Amazon::PAApi5::Signature - one line description


=head1 SYNOPSIS

    use Amazon::PAApi5::Signature;


=head1 DESCRIPTION

Amazon::PAApi5::Signature is


=head1 REPOSITORY

=begin html

<a href="https://github.com/bayashi/Amazon-PAApi5-Signature/blob/master/LICENSE"><img src="https://img.shields.io/badge/LICENSE-Artistic%202.0-GREEN.png"></a> <a href="http://travis-ci.org/bayashi/Amazon-PAApi5-Signature"><img src="https://secure.travis-ci.org/bayashi/Amazon-PAApi5-Signature.png"/></a> <a href="https://coveralls.io/r/bayashi/Amazon-PAApi5-Signature"><img src="https://coveralls.io/repos/bayashi/Amazon-PAApi5-Signature/badge.png?branch=master"/></a>

=end html

Amazon::PAApi5::Signature is hosted on github: L<http://github.com/bayashi/Amazon-PAApi5-Signature>

I appreciate any feedback :D


=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<Other::Module>


=head1 LICENSE

C<Amazon::PAApi5::Signature> is free software; you can redistribute it and/or modify it under the terms of the Artistic License 2.0. (Note that, unlike the Artistic License 1.0, version 2.0 is GPL compatible by itself, hence there is no benefit to having an Artistic 2.0 / GPL disjunction.) See the file LICENSE for details.

=cut
