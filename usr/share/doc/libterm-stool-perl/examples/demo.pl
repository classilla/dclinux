#!/usr/bin/perl -w

use lib '.';
use Term::Stool::Screen;
use Term::Stool::Window;
use Term::Stool::Dialog;
use Term::Stool::TitleBar;
use Term::Stool::HelpBar;
use Term::Stool::Button;
use Term::Stool::Text;
use Term::Stool::WrappedText;
use Term::Stool::Input;
use Term::Stool::Password;
use Term::Stool::List;
use Term::Stool::DropDown;
use Term::Stool::CheckBox;
use Term::Stool::RadioButton;
use Term::Stool::Menu;
use Term::Stool::MenuBar;
use Term::Stool::Panel;
my @rad=(
	Term::Stool::RadioButton->new(xoffset => 1, yoffset => 4),
	Term::Stool::RadioButton->new(xoffset => 7, yoffset => 4),
	Term::Stool::RadioButton->new(xoffset => 14, yoffset => 4),
	Term::Stool::RadioButton->new(xoffset => 20, yoffset => 4),
);
$rad[0]->groupadd(@rad);
my $l=Term::Stool::DropDown->new(
	list => Term::Stool::List->new(
		cursor => 2, #height => 7,
		contents => ["foo", "bar", "some other list item", "baz", "quuz",
			     "this is a really long list item that is truncated",
			     1..10
			    ]
	),
	xoffset => 1, yoffset => 0, name => 'l', width => 33, height => 5,
);
my $i=Term::Stool::Input->new(
	text => "whee this is fun!", xoffset => 1, yoffset => 6, name => 'i',
	cursor => 13, width => 33,
);
#$i->validate_hook($i->integer_validate_hook);
my $w=Term::Stool::Dialog->new(
	height => 14, width => 39, name => 'w',
	title => "hello"
);
my $p=Term::Stool::Panel->new(
	xoffset => 0, yoffset => 4, width => 37, height => 6, topborder =>
	-3,
);
$w->inside->add(Term::Stool::WrappedText->new(
	text => "This is a test of the S-Lang Toolkit for perl. This is only a test. This is some pretty long text inside a scrolling list thingy. Lalalalalalalalalalal",
	width => 35, height=> 3, yoffset => 0, xoffset => 0, name => 'text',
));
my $check=Term::Stool::Text->new(xoffset => 5, yoffset => 2, text => "a checkbox");
$p->add($l,
	Term::Stool::CheckBox->new(xoffset => 1, yoffset => 2),
	$check, @rad, $i,
	Term::Stool::Password->new(xoffset => 1, yoffset => 8),
);
$w->inside->add($p);
$w->buttonbar->add(
	Term::Stool::Button->new(text => "&Ok"),
	Term::Stool::Button->new(text => "a"),
	Term::Stool::Button->new(text => "b"),
	Term::Stool::Button->new(text => "&Cancel", align => 'right'),
);
my $s=Term::Stool::Screen->new;
my $menu=Term::Stool::MenuBar->new;
#$menu->add(Term::Stool::Menu->new(
#		title => 'File',
#		list => Term::Stool::List->new(
#			contents => ['foo', 'bar', 'baz'],
#		),
#	),
#	Term::Stool::Menu->new(
#		title => 'Edit',
#		list => Term::Stool::List->new(
#			contents => ['Cut', 'Copy', 'Paste'],
#		),
#	),
#);
#$s->add($menu);
$s->add(Term::Stool::TitleBar->new(text => "Hello!"));
$s->add(Term::Stool::Window->new(
	xoffset => 46, yoffset => 10, height => 5, width => 8,
	title => "hi!"
));
$s->add($w);
$s->add(Term::Stool::HelpBar->new(helpstack => ["Tab between elements"]));
$s->run($i);
$s->reset;

