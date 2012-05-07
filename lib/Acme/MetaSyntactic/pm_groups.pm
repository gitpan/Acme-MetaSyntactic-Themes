package Acme::MetaSyntactic::pm_groups;
use strict;
use Acme::MetaSyntactic::List;
our @ISA = qw( Acme::MetaSyntactic::List );
our $VERSION = '1.000';
__PACKAGE__->init();

our %Remote = (
    source  => 'http://www.pm.org/groups/perl_mongers.xml',
    extract => sub {
        return
            map { Acme::MetaSyntactic::RemoteList::tr_nonword($_) }
            map { s/#/Pound_/g; $_ }
            map { s/&([aeiouy])(?:acute|grave|circ|uml);/$1/g; $_ }
            $_[0] =~ m!<group id="\d+" status="active">\s*<name>\s*([^<]+)\s*</nam!g;
    },
);

1;

=head1 NAME

Acme::MetaSyntactic::pm_groups - The Perl Mongers groups theme

=head1 DESCRIPTION

List all the B<active> Perl Mongers groups, as described in the master
Perl Mongers file L<http://www.pm.org/groups/perl_mongers.xml>.

=head1 CONTRIBUTOR

Philippe "BooK" Bruhat

Introduced in Acme-MetaSyntactic version 0.49, published on November 21, 2005.

Updated in version 0.56 (28 groups disappeared and 4 groups were created),
published on January 9, 2006.

Later updates (from the source web site):

=over 4

=item * version 0.58, published on January 23, 2006.

=item * version 0.60, published on February 6, 2006.

=item * version 0.61, published on February 13, 2006.

=item * version 0.64, published on March 6, 2006.

=item * version 0.72, published on May 1, 2006.

=item * version 0.77, published on June 5, 2006.

=item * version 0.79, published on June 19, 2006.

=item * version 0.82, published on July 10, 2006.

=item * version 0.87, published on August 14, 2006.

=item * version 0.91, published on September 11, 2006.

=item * version 0.93, published on September 25, 2006.

=item * version 0.95, published on October 9, 2006.

=item * version 0.99, published on November 6, 2006.

=back

Updated with changes since November 2006, and
received its own version number for Acme-MetaSyntactic-Themes version 1.000,
published on May 7, 2012.

=head1 SEE ALSO

L<Acme::MetaSyntactic>, L<Acme::MetaSyntactic::List>.

=cut

__DATA__
# names
Albany_pm
Albuquerque_pm
Anchorage_pm
AnnArbor_pm
Atlanta_pm
Austin_pm
Baltimore_pm
Boston_pm
Boulder_pm
Charlotte_pm
Chicago_pm
Cincinnati_pm
Columbus_pm
DFW_pm
DC_pm
Denver_pm
Gainesville_pm
GrandRapids_pm
HudsonValley_pm
Houston_pm
KansasCity_pm
Madison_pm
Minneapolis_pm
Montreal_pm
Nashville_pm
Omaha_pm
Ottawa_pm
Philadelphia_pm
Phoenix_pm
PikesPeak_pm
Pittsburgh_pm
PDX_pm
Raleigh_pm
SanDiego_pm
SanFrancisco_pm
Seattle_pm
Sonoma_pm
StLouis_pm
TampaBay_pm
Tallahassee_pm
Toronto_pm
Vancouver_pm
Winnipeg_pm
MexicoCity_pm
Curitiba_pm
Amsterdam_pm
Bath_pm
Braga_pm
Bratislava_pm
Bristol_pm
Edinburgh_pm
Glasgow_pm
Helsinki_pm
Copenhagen_pm
Lisbon_pm
London_pm
Moscow_pm
Munich_pm
Paris_pm
Porto_pm
Roma_pm
Southampton_pm
SPb_pm
Vienna_pm
Zagreb_pm
Brisbane_pm
Melbourne_pm
Perth_pm
Singapore_pm
Sydney_pm
Bandung_pm
Delhi_pm
Kyoto_pm
Pune_pm
Tokyo_pm
Israel_pm
Rehovot_pm
Guimaraes_pm
Seoul_pm
SiliconValley_pm
Oslo_pm
Madrid_pm
Hyderabad_pm
Budapest_pm
Purdue_pm
Frankfurt_pm
Milan_pm
Coimbra_pm
Kansai_pm
Madras_pm
Granada_pm
Seneca_pm
Ulm_pm
AtlanticCity_pm
Los_Angeles_pm
Qatar_pm
Chisinau_pm
Birmingham_pm
RenoTahoe_pm
Toulouse_pm
Niederrhein_pm
Barcelona_pm
Santa_Fe_Los_Alamos_pm
Victoria_pm
Wellington_pm
Marseille_pm
Timisoara_pm
SoCo_pm
Berlin_pm
Nordest_pm
CaFe_pm
Tucson_pm
Devon_and_Cornwall_pm
CostaRica_pm
Nomads_pm
Lyon_pm
Basel_pm
PerlSemNY_pm
Bruxelles_pm
CAMEL_pm
Belgrade_pm
China_pm
Bucharest_pm
WhiteMountain_pm
NH_pm
Kaohsiung_pm
Kw_pm
Canberra_pm
PortlandMaine_pm
Cologne_pm
Hamburg_pm
Guatemala_pm
Helsingborg_pm
Buffalo_pm
Vlaanderen_pm
Saarland_pm
Shibuya_pm
German_pm
Kiel_pm
Princeton_pm
Pisa_pm
Arnhem_pm
Stuttgart_pm
Dahut_pm
Roederbergweg_pm
Bielefeld_pm
Jerusalem_pm
Italia_pm
Geneva_pm
Paderborn_pm
BH_pm
Argentina_pm
Brazosvalley_pm
Groningen_pm
Innsbruck_pm
Santiago_pm
Pound_Perl_pm
Erlangen_pm
MiltonKeynes_pm
Chupei_pm
Darmstadt_pm
Ruhr_pm
Krakow_pm
Kaiserslautern_pm
Coimbatore_pm
Sophia_pm
SanAngelo_pm
Warszawa_pm
Hannover_pm
Szczecin_pm
Ithaca_pm
Tomar_pm
Fukuoka_pm
Vladivostok_pm
RostovOnDon_pm
Minsk_pm
Odessa_pm
Yokohama_pm
Leicester_pm
Krasnodar_pm
Fredericton_pm
Northwestengland_pm
Kostroma_pm
Quito_pm
Kushiro_pm
Lima_pm
Advent_pm
Adelaide_pm
Madurai_pm
Cali_pm
Hokkaido_pm
Linz_pm
Voronezh_pm
Nagoya_pm
Kamakura_pm
Kathmandu_pm
TelAviv_pm
Makati_pm
Bordeaux_pm
HradecKralove_pm
Goiania_pm
Petropolis_pm
Brno_pm
Logan_pm
Tolyatti_pm
LGBT_pm
SouthernOregon_pm
Plzen_pm
Sendai_pm
WestVirginia_pm
Kerman_pm
Mumbai_pm
Weston_pm
Cluj_pm
