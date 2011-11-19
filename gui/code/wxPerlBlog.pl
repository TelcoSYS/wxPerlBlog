#!/usr/bin/perl -w -- 
# generated by wxGlade HG on Sat Nov 19 19:24:45 2011
# To get wxPerl visit http://wxPerl.sourceforge.net/

use Wx 0.15 qw[:allclasses];
use strict;
package wxPerlBlogApp;

use base qw(Wx::App);
use strict;

use MainFrame;

sub OnInit {
	my( $self ) = shift;

	Wx::InitAllImageHandlers();

	my $mainFrame = MainFrame->new();

	$self->SetTopWindow($mainFrame);
	$mainFrame->Show(1);

	return 1;
}
# end of class wxPerlBlogApp

package main;

unless(caller){
	my $wxPerlBlog = wxPerlBlogApp->new();
	$wxPerlBlog->MainLoop();
}
