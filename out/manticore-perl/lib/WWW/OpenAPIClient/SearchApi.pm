=begin comment

Manticore Search Client

Please note that this client is experimental. For full documentation of the API methods consult https://manual.manticoresearch.com/. 

The version of the OpenAPI document: 1.0.0
Contact: info@manticoresearch.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::SearchApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# percolate
#
# Perform reverse search on a percolate index
# 
# @param string $index Name of the percolate index (required)
# @param PercolateRequest $percolate_request  (required)
{
    my $params = {
    'index' => {
        data_type => 'string',
        description => 'Name of the percolate index',
        required => '1',
    },
    'percolate_request' => {
        data_type => 'PercolateRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'percolate' } = { 
        summary => 'Perform reverse search on a percolate index',
        params => $params,
        returns => 'SearchResponse',
        };
}
# @return SearchResponse
#
sub percolate {
    my ($self, %args) = @_;

    # verify the required parameter 'index' is set
    unless (exists $args{'index'}) {
      croak("Missing the required parameter 'index' when calling percolate");
    }

    # verify the required parameter 'percolate_request' is set
    unless (exists $args{'percolate_request'}) {
      croak("Missing the required parameter 'percolate_request' when calling percolate");
    }

    # parse inputs
    my $_resource_path = '/json/pq/{index}/search';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'index'}) {
        my $_base_variable = "{" . "index" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'index'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'percolate_request'}) {
        $_body_data = $args{'percolate_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SearchResponse', $response);
    return $_response_object;
}

#
# search
#
# Performs a search
# 
# @param SearchRequest $search_request  (required)
{
    my $params = {
    'search_request' => {
        data_type => 'SearchRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'search' } = { 
        summary => 'Performs a search',
        params => $params,
        returns => 'SearchResponse',
        };
}
# @return SearchResponse
#
sub search {
    my ($self, %args) = @_;

    # verify the required parameter 'search_request' is set
    unless (exists $args{'search_request'}) {
      croak("Missing the required parameter 'search_request' when calling search");
    }

    # parse inputs
    my $_resource_path = '/json/search';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'search_request'}) {
        $_body_data = $args{'search_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SearchResponse', $response);
    return $_response_object;
}

1;
