package WWW::WuFoo::User;

use Moose;

# ABSTRACT: The Users API is used to gather details about the users you have defined through User Management.

has '_wufoo'            => (is => 'rw', isa => 'WWW::WuFoo');
has 'createthemes'      => (is => 'rw', isa => 'Str');
has 'timezone'          => (is => 'rw', isa => 'Str');
has 'user'              => (is => 'rw', isa => 'Str');
has 'adminaccess'       => (is => 'rw', isa => 'Str');
has 'isaccountowner'    => (is => 'rw', isa => 'Str');
has 'imageurlblog'      => (is => 'rw', isa => 'Str');
has 'email'             => (is => 'rw', isa => 'Str');
has 'imageurlsmall'     => (is => 'rw', isa => 'Str');
has 'company'           => (is => 'rw', isa => 'Str');
has 'apikey'            => (is => 'rw', isa => 'Str');
has 'createreports'     => (is => 'rw', isa => 'Str');
has 'hash'              => (is => 'rw', isa => 'Str');
has 'linkforms'         => (is => 'rw', isa => 'Str');
has 'image'             => (is => 'rw', isa => 'Str');
has 'createforms'       => (is => 'rw', isa => 'Str');
has 'httpsenabled'      => (is => 'rw', isa => 'Str');
has 'linkreports'       => (is => 'rw', isa => 'Str');








1;

__END__
=pod

=head1 NAME

WWW::WuFoo::User - The Users API is used to gather details about the users you have defined through User Management.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

