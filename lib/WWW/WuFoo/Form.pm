package WWW::WuFoo::Form;

use Moose;
use Data::Dumper;

# ABSTRACT: turns baubles into trinkets

has '_wufoo'            => (is => 'rw', isa => 'WWW::WuFoo');
has 'datecreated'       => (is => 'rw', isa => 'Str');
has 'entrylimit'        => (is => 'rw', isa => 'Str');
has 'ispublic'          => (is => 'rw', isa => 'Str');
has 'email'             => (is => 'rw', isa => 'Str');
has 'startdate'         => (is => 'rw', isa => 'Str');
has 'enddate'           => (is => 'rw', isa => 'Str');
has 'linkfields'        => (is => 'rw', isa => 'Str');
has 'language'          => (is => 'rw', isa => 'Str');
has 'hash'              => (is => 'rw', isa => 'Str');
has 'linkentries'       => (is => 'rw', isa => 'Str');
has 'url'               => (is => 'rw', isa => 'Str');
has 'dateupdated'       => (is => 'rw', isa => 'Str');
has 'description'       => (is => 'rw', isa => 'Str');
has 'name'              => (is => 'rw', isa => 'Str');
has 'redirectmessage'   => (is => 'rw', isa => 'Str');
has 'linkentriescount'  => (is => 'rw', isa => 'Str');


sub entries {
    my ($self) = @_;
    
    my $url = '/api/v3/forms/' . $self->hash . '/entries.json';
    return $self->_wufoo->do_request($url);
}

sub fields {
    my ($self) = @_;
    
    my $url = '/api/v3/forms/' . $self->hash . '/fields.json';
    return $self->_wufoo->do_request($url);
}


1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Form - turns baubles into trinkets

=head1 VERSION

version 0.001

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

