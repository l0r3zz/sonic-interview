   # this was writtent to run on a Macbook pro which had PERL v5.34.1 installed.
   # I used a free API server at https://json-placeholder.mock.beeceptor.com
   # while this is TLS, there is no authentication or authorization required (no bearer token necessary)
   # This code refused to run (500 errors) until I set...
   # export 
   use LWP::UserAgent;
   require LWP::Protocol::https;
   use HTTP::Request::Common; # For creating HTTP requests

   my $ua = LWP::UserAgent->new;
   $ua->ssl_opts(
	SSL_verify_mode => IO::Socket::SSL::SSL_VERIFY_NONE,
  	verify_hostnam0e => 0 
   );
   my $req = GET 'https://json-placeholder.mock.beeceptor.com/users', 
                   Content_Type => 'application/json';
   my $res = $ua->request($req);

   if ($res->is_success) {
       print $res->content;
   } else {
       print "Error: ".$res->status_line;
   }
