=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::InlineResponse20019ReadabilitySubscores;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'InlineResponse20019ReadabilitySubscores',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'reading_time_seconds' => {
        datatype => 'int',
        base_name => 'reading_time_seconds',
        description => '',
        format => '',
        read_only => '',
            },
    'forcast' => {
        datatype => 'double',
        base_name => 'forcast',
        description => '',
        format => '',
        read_only => '',
            },
    'flesch' => {
        datatype => 'double',
        base_name => 'flesch',
        description => '',
        format => '',
        read_only => '',
            },
    'smog' => {
        datatype => 'double',
        base_name => 'smog',
        description => '',
        format => '',
        read_only => '',
            },
    'ari' => {
        datatype => 'double',
        base_name => 'ari',
        description => '',
        format => '',
        read_only => '',
            },
    'lix' => {
        datatype => 'double',
        base_name => 'lix',
        description => '',
        format => '',
        read_only => '',
            },
    'coleman_liau' => {
        datatype => 'double',
        base_name => 'coleman_liau',
        description => '',
        format => '',
        read_only => '',
            },
    'kincaid' => {
        datatype => 'double',
        base_name => 'kincaid',
        description => '',
        format => '',
        read_only => '',
            },
    'fog' => {
        datatype => 'double',
        base_name => 'fog',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'reading_time_seconds' => 'int',
    'forcast' => 'double',
    'flesch' => 'double',
    'smog' => 'double',
    'ari' => 'double',
    'lix' => 'double',
    'coleman_liau' => 'double',
    'kincaid' => 'double',
    'fog' => 'double'
} );

__PACKAGE__->attribute_map( {
    'reading_time_seconds' => 'reading_time_seconds',
    'forcast' => 'forcast',
    'flesch' => 'flesch',
    'smog' => 'smog',
    'ari' => 'ari',
    'lix' => 'lix',
    'coleman_liau' => 'coleman_liau',
    'kincaid' => 'kincaid',
    'fog' => 'fog'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
