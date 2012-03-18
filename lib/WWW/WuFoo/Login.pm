package WWW::WuFoo::Login;

use Moose;

# ABSTRACT: The Login API is designed to allow approved partners access to user’s API keys given an email, password and (optionally) a subdomain. In other words, this API gives you the ability to gather the API key for a user without them having to visit Wufoo. This keeps your user engaged in your process because they don’t have to leave your site.


has '_wufoo'            => (is => 'rw', isa => 'WWW::WuFoo');
has 'integrationkey'    => (is => 'rw', isa => 'Str');
has 'email'             => (is => 'rw', isa => 'Str');
has 'password'          => (is => 'rw', isa => 'Str');
has 'subdomain'         => (is => 'rw', isa => 'Str');




1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Login - The Login API is designed to allow approved partners access to user’s API keys given an email, password and (optionally) a subdomain. In other words, this API gives you the ability to gather the API key for a user without them having to visit Wufoo. This keeps your user engaged in your process because they don’t have to leave your site.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

