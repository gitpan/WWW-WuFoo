package WWW::WuFoo::Entry;

use Moose;

# ABSTRACT: The Entries API is used to gather the data that users have submitted to your form. In this section we’ll describe the hierarchy of the entries element as well as describe the syntax for filtering this data.

has '_wufoo'        => (is => 'rw', isa => 'WWW::WuFoo');
has 'entryid'       => (is => 'rw', isa => 'Str');
has 'datecreated'   => (is => 'rw', isa => 'Str');
has 'createdby'     => (is => 'rw', isa => 'Str');
has 'dateupdated'   => (is => 'rw', isa => 'Str');
has 'updatedby'     => (is => 'rw', isa => 'Str');




1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Entry - The Entries API is used to gather the data that users have submitted to your form. In this section we’ll describe the hierarchy of the entries element as well as describe the syntax for filtering this data.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

