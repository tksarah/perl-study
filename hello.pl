#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  #$c->stash(name => 'うんこ' , hobby => 'まんが' , language => '日本語');
  #$c->render(template => 'index');
  #$c->render(template => 'profile');
  $c->render(template => 'fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Hoge';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
To learn more, you can browse through the documentation
<%= link_to 'here' => '/perldoc' %>.

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.

%= form_for '/' => begin
  %= text_field 'body'
  %= submit_button '投稿する'
% end

</body>
</html>

@@ fizzbuzz.html.ep
<!DOCTYPE html>
<html>
  <head><title>Fizzbuzz</title></head>
  <body>
% for my $i (1..100){
	% if($i % 3 == 0 && $i % 5 == 0){
Fizzbuzz<br>
	% }elsif($i % 3 == 0){ 
Aho<br>
	% }elsif($i % 5 == 0){ 
Buzz<br>
	% }else {
<%= $i %><br>
	%}
%}
  </body>
</html>
