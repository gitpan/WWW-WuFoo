package WWW::WuFoo::Field;

use Moose;

# ABSTRACT: The Fields API describes the hierarchy of your data. At the heart of this API is the listing of FieldId values. Each FieldId corresponds to a value in the Entries API.

has '_wufoo'            => (is => 'rw', isa => 'WWW::WuFoo');
has '_form'             => (is => 'rw', isa => 'WWW::WuFoo::Form');
has 'id'                => (is => 'rw', isa => 'Str', required => 1);
has 'type'              => (is => 'rw', isa => 'Str');
has 'title'             => (is => 'rw', isa => 'Str');
has 'defaultval'        => (is => 'rw', isa => 'Str');
has 'classnames'        => (is => 'rw', isa => 'Str');
has 'instructions'      => (is => 'rw', isa => 'Str');
has 'page'              => (is => 'rw', isa => 'Str');
has 'isrequired'        => (is => 'rw', isa => 'Str');
has 'title'             => (is => 'rw', isa => 'Str');

has 'subfields'         => (is => 'rw', isa => 'ArrayRef');
has 'choices'           => (is => 'rw', isa => 'ArrayRef');



1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Field - The Fields API describes the hierarchy of your data. At the heart of this API is the listing of FieldId values. Each FieldId corresponds to a value in the Entries API.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

