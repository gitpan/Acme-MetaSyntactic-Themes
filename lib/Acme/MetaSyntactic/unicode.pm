package Acme::MetaSyntactic::unicode;
use strict;
use Acme::MetaSyntactic::List;
our @ISA = qw( Acme::MetaSyntactic::List );
our $VERSION = '1.001';

{
    # a very basic list
    my $data = join "\n",
        map { ( "\t\tLATIN CAPITAL LETTER $_", "\t\tLATIN SMALL LETTER $_" ) }
        'A' .. 'Z';

    # try to find better
    if ( $] >= 5.006 && $] < 5.007003  ) {
        eval { $data = require 'unicode/Name.pl'; };
    }
    elsif ( $] >= 5.007003 ) {
        eval { $data = require 'unicore/Name.pl'; };

        # since v5.11.3, unicore/Name.pl creates subroutines
        # they end up in our namespace, so get rid of them
        undef *code_point_to_name_special;
        undef *name_to_code_point_special;
    }

    # clean up the list
    my %seen;
    $data = join ' ',
        grep !$seen{$_}++,            # we might have aliases/duplicates
        map  { s/ \(.*\)//; y/- /_/; $_ }
        grep { $_ ne '<control>' }    # what's this for a character name?
        map  { my @F = split /\t+/; @F > 2 ? () : $F[1] }   # remove blocks
        split /\n/, $data;

    __PACKAGE__->init( { names => $data } );
}

1;

__END__

=for irony

=encoding iso-8859-1

=head1 NAME

Acme::MetaSyntactic::unicode - The unicode theme

=head1 DESCRIPTION

The name of all Unicode characters known to Perl.

Note that since your Perl installation knows all these names, they
are not included in the source of this module (that's the whole point).

=head1 CONTRIBUTOR

Philippe "BooK" Bruhat.

Thanks to S�bastien Aperghis-Tramoni for his help in finding
F<unicore/Name.pl>.

Introduced in Acme-MetaSyntactic version 0.50, published on November 28, 2005.

Updated to support more Perl versions in version 0.51, published
on December 5, 2005.

Received its own version number for Acme-MetaSyntactic-Themes version 1.000,
published on May 7, 2012.

Updated with an C<=encoding> pod command in version 1.001,
published on May 14,2012

=head1 SEE ALSO

L<Acme::MetaSyntactic>, L<Acme::MetaSyntactic::List>.

=cut

# yep, no __DATA__ this time!

