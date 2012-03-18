package WWW::WuFoo::Widget;

use Moose;

# ABSTRACT: The Widgetes API is used to gather details about the widgets you have permission to view. Used in combination with the reports you could easily build a tool to view widgets for a given report.

has _wufoo          => (is => 'rw', isa => 'WWW::WuFoo');
has 'name'          => (is => 'rw', isa => 'Str');
has 'size'          => (is => 'rw', isa => 'Str');
has 'type'          => (is => 'rw', isa => 'Str');
has 'typedesc'      => (is => 'rw', isa => 'Str');
has 'hash'          => (is => 'rw', isa => 'Str');



1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Widget - The Widgetes API is used to gather details about the widgets you have permission to view. Used in combination with the reports you could easily build a tool to view widgets for a given report.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

