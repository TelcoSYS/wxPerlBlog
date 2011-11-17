#!perl

use Wx;

my $app = Wx::SimpleApp->new;

my $frame = Wx::Frame->new( undef, -1, 'Hello, world!' );

my $button = Wx::Button->new($frame, -1, "Jalt Now");

$frame->Show;

$app->MainLoop;


