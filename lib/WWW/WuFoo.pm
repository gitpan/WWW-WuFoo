package WWW::WuFoo;

use strict;
use warnings;
use Moose;
use LWP::UserAgent;
use Data::Dumper;
use JSON;

use WWW::WuFoo::Form;
use WWW::WuFoo::User;

# ABSTRACT: turns baubles into trinkets

has 'subdomain' => (is => 'rw', isa => 'Str');
has 'apikey'    => (is => 'rw', isa => 'Str');


sub forms {
    my ($self, $opts) = @_;
    my $url = '/api/v3/forms.json&IncludeTodayCount=true';

    my @arr;
    my $obj = $self->do_request($url)->{Forms};

    foreach my $form (@$obj) {
        my $hash;
        foreach my $key (keys %$form) {
            $hash->{lc $key} = $form->{$key} || '';
        }
        
        $hash->{_wufoo} = $self;
        push(@arr,WWW::WuFoo::Form->new($hash));
    }

    return \@arr;
}

sub users {
    my ($self) = @_;
    
    my @arr;
    my $url = '/api/v3/users.json';
    my $users = $self->do_request($url)->{Users};
    foreach my $user (@$users) {
        my $hash;
        foreach my $key (keys %$user) {
            $hash->{lc $key} = $user->{$key} || '';
        }
        
        $hash->{_wufoo} = $self;
        push(@arr,WWW::WuFoo::User->new($hash));
    }
    
    return \@arr;
}

sub do_request {
    my ($self, $url) = @_;

    my $command = 'curl --silent -u ' . $self->apikey . ':footastic https://' . $self->subdomain . '.wufoo.com' . $url;
    my $output = `$command`;
    my $obj = from_json($output);
    return $obj;
}

1;

__END__
=pod

=head1 NAME

WWW::WuFoo - turns baubles into trinkets

=head1 VERSION

version 0.001

=head1 AUTHOR

Peter Lytle <pete@bluecampaigns.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Peter Lytle.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

