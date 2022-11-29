#!perl

use 5.006001;

use strict;
use warnings;

use Test::Perl::Critic::Policy qw< all_policies_ok >;

our $VERSION = '1.142';

use Perl::Critic::TestUtils;
Perl::Critic::TestUtils::assert_version( $VERSION );

# Notice that you can pass arguments to this test, which limit the testing to
# specific policies.  The arguments must be shortened policy names. When using
# prove(1), any arguments that follow '::' will be passed to the test script.

my %args = @ARGV ? ( -policies => [ @ARGV ] ) : ();
all_policies_ok(%args);

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab shiftround :
