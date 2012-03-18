package WWW::WuFoo::Comment;

use Moose;

# ABSTRACT: The Comments API is used to gather details about comments you’ve made on forms you have permission to view.

has '_wufoo'      => (is => 'rw', isa => 'WWW::WuFoo');
has 'subdomain'   => (is => 'rw', isa => 'Str');
has 'xml'         => (is => 'rw', isa => 'Str');
has 'json'        => (is => 'rw', isa => 'Str');
has 'formid'      => (is => 'rw', isa => 'Str');
has 'pretty'      => (is => 'rw', isa => 'Str');
has 'entryid'     => (is => 'rw', isa => 'Str');
has 'pagesize'    => (is => 'rw', isa => 'Str');
has 'pagestart'   => (is => 'rw', isa => 'Str');


1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Comment - The Comments API is used to gather details about comments you’ve made on forms you have permission to view.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

