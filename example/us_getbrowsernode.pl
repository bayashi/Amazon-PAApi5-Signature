#!/usr/bin/env perl
use strict;
use warnings;
use Amazon::PAApi5::Payload;
use Amazon::PAApi5::Signature;
use HTTP::Request::Common;
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

    my $ua = LWP::UserAgent->new;

    my $req = POST $sig->req_url, $sig->headers, Content => $sig->payload;
    my $res = $ua->execute($req);

    warn Dumper($res->status_line, $res->content);
}

