package WWW::WuFoo::Form;

use Moose;
use Data::Dumper;
use WWW::WuFoo::Field;

# ABSTRACT: The Forms API is used to gather details about the forms you have permission to access. This API can be used to create a list of all forms belonging to a user and dynamically generate a form embed snippet to use in your application.

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
    
    my @arr;
    my $url = '/api/v3/forms/' . $self->hash . '/fields.json';
    my $ref = $self->_wufoo->do_request($url)->{Fields};

    foreach my $field (@$ref) {
        my $hash;
        foreach my $key (keys %$field) {
            $hash->{lc $key} = $field->{$key} || '';
        }

        print Dumper($field);
        $hash->{_form} = $self;
        push(@arr,WWW::WuFoo::Field->new($hash));
    }

    return \@arr;
}


1;

__END__
=pod

=head1 NAME

WWW::WuFoo::Form - The Forms API is used to gather details about the forms you have permission to access. This API can be used to create a list of all forms belonging to a user and dynamically generate a form embed snippet to use in your application.

=head1 VERSION

version 0.002

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

