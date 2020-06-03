#!/usr/bin/env perl
use strict;
use warnings;
use Amazon::PAApi5::Payload;
use Amazon::PAApi5::Signature;
use HTTP::Headers;
use LWP::UserAgent;
use Data::Dumper;

my $PARTNER_TAG = $ENV{AMAZON_PARTNER_TAG};
my $ACCESS_KEY = $ENV{AMAZON_ACCESS_KEY};
my $SECRET_KEY = $ENV{AMAZON_SECRET_KEY};

{
    my $payload = Amazon::PAApi5::Payload->new(
        $PARTNER_TAG
    )->to_json({
        BrowseNodeIds => ['6134005011'],
        Resources     => ["BrowseNodes.Children"],
    });

    my $sig = Amazon::PAApi5::Signature->new(
        $ACCESS_KEY,
        $SECRET_KEY,
        $payload,
        {
            operation => 'GetBrowseNodes',
        },
    );

    my $ua = LWP::UserAgent->new(
        default_headers => HTTP::Headers->new($sig->headers),
    );

    my $res = $ua->post($sig->req_url, Content => $sig->payload);

    warn Dumper($res->status_line, $res->content);
}

