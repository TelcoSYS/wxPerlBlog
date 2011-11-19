# generated by wxGlade 0.6.3 on Thu Nov 17 15:21:47 2011
# To get wxPerl visit http://wxPerl.sourceforge.net/

use Wx 0.15 qw[:allclasses];
use strict;
package MainFrame;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

# begin wxGlade: ::dependencies
# end wxGlade

sub new {
	my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
	$parent = undef              unless defined $parent;
	$id     = -1                 unless defined $id;
	$title  = ""                 unless defined $title;
	$pos    = wxDefaultPosition  unless defined $pos;
	$size   = wxDefaultSize      unless defined $size;
	$name   = ""                 unless defined $name;

# begin wxGlade: MainFrame::new

	$style = wxDEFAULT_FRAME_STYLE 
		unless defined $style;

	$self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
	$self->{notebook} = Wx::Notebook->new($self, -1, wxDefaultPosition, wxDefaultSize, 0);
	$self->{tabLang} = Wx::Panel->new($self->{notebook}, -1, wxDefaultPosition, wxDefaultSize, );
	$self->{tabCateg} = Wx::Panel->new($self->{notebook}, -1, wxDefaultPosition, wxDefaultSize, );
	$self->{tabBlog} = Wx::Panel->new($self->{notebook}, -1, wxDefaultPosition, wxDefaultSize, );
	$self->{grid_1} = Wx::Grid->new($self->{tabCateg}, -1);
	$self->{langGrid} = Wx::ListCtrl->new($self->{tabLang}, -1, wxDefaultPosition, wxDefaultSize, wxLC_REPORT|wxSUNKEN_BORDER);

	$self->__set_properties();
	$self->__do_layout();

# end wxGlade
	return $self;

}


sub __set_properties {
	my $self = shift;

# begin wxGlade: MainFrame::__set_properties

	$self->SetTitle("wxPerlBlog");
	$self->{grid_1}->CreateGrid(10, 1);
	$self->{grid_1}->EnableDragRowSize(0);
	$self->{grid_1}->SetSelectionMode(wxGridSelectRows);
	$self->{grid_1}->SetColLabelValue(0, "Categoria");

# end wxGlade
}

sub __do_layout {
	my $self = shift;

# begin wxGlade: MainFrame::__do_layout

	$self->{frameSizer} = Wx::BoxSizer->new(wxHORIZONTAL);
	$self->{sizer_1} = Wx::BoxSizer->new(wxHORIZONTAL);
	$self->{sizer_2} = Wx::BoxSizer->new(wxHORIZONTAL);
	$self->{sizer_2}->Add($self->{grid_1}, 1, wxEXPAND, 0);
	$self->{tabCateg}->SetSizer($self->{sizer_2});
	$self->{sizer_1}->Add($self->{langGrid}, 1, wxEXPAND, 0);
	$self->{tabLang}->SetSizer($self->{sizer_1});
	$self->{notebook}->AddPage($self->{tabBlog}, "Blogs");
	$self->{notebook}->AddPage($self->{tabCateg}, "Categorias");
	$self->{notebook}->AddPage($self->{tabLang}, "Idiomas");
	$self->{frameSizer}->Add($self->{notebook}, 1, wxEXPAND, 0);
	$self->SetSizer($self->{frameSizer});
	$self->{frameSizer}->Fit($self);
	$self->Layout();

# end wxGlade
}

# end of class MainFrame

1;

