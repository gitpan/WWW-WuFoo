package WWW::WuFoo::Report;

use Moose;

# ABSTRACT: The Reports API is used to gather details about the reports you have permission to view.

has '_wufoo'            => (is => 'rw', isa => 'WWW::WuFoo');
has 'name'    => (is => 'rw', isa => 'Str');
has 'ispublic'    => (is => 'rw', isa => 'Str');
has 'url'    => (is => 'rw', isa => 'Str');
has 'description'    => (is => 'rw', isa => 'Str');
has 'datecreated'    => (is => 'rw', isa => 'Str');
has 'dateupdated'    => (is => 'rw', isa => 'Str');
has 'hash'    => (is => 'rw', isa => 'Str');



1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Report - The Reports API is used to gather details about the reports you have permission to view.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

