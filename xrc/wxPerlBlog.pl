#!/usr/bin/perl -w -- 
# generated by wxGlade 0.6.3 on Thu Nov 17 15:21:47 2011
# To get wxPerl visit http://wxPerl.sourceforge.net/

use Wx 0.15 qw[:allclasses];
use strict;
package wxPerlBlog;

use base qw(Wx::App);
use strict;

use MainFrame;

sub OnInit {
	my( $self ) = shift;

	Wx::InitAllImageHandlers();

	my $frame = MainFrame->new();

	$self->SetTopWindow($frame);
	$frame->Show(1);

	return 1;
}
# end of class wxPerlBlog

package main;

unless(caller){
	my $wxPerlBlog = wxPerlBlog->new();
	$wxPerlBlog->MainLoop();
}
