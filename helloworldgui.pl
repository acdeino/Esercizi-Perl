use strict;
use Gtk2 '-init';

# Create main window
my $mw = Gtk2::Window->new('toplevel');

#Create main positioning table
my $t = Gtk2::Table->new(1, 2, 0);

# 'Hello World' labe
my $label = Gtk2::Label->new('Hello World!');
$t->attach_defaults($label, 0, 1, 0, 1);
$label->show;

# Quit button
my $button = Gtk2::Button->new("Quit");
$t->attach_defaults($button, 0, 1, 1, 2);
$button->signal_connect( 'clicked'=> sub { exit } );
$button->show;

#Main loop
$mw->show_all;
Gtk2->main;
0;
