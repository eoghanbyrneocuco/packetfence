package pfappserver::Form::Config::SwitchImport;

=head1 NAME

pfappserver::Form::Config::SwitchImport - Web form for switch import

=head1 DESCRIPTION

Form for importing switches from a CSV file

=cut

use HTML::FormHandler::Moose;
extends 'pfappserver::Base::Form';
with 'pfappserver::Base::Form::Role::Help';

#import from CSV
has_field importcsv =>
  (
    type => 'Upload',
    label => 'CSV file',
    required => 1,
  );

has_field 'delimiter' =>
  (
   type => 'Select',
   label => 'Column Delimiter',
   required => 1,
   options =>
   [
    { value => 'comma', label => 'Comma' },
    { value => 'semicolon', label => 'Semicolon' },
    { value => 'colon', label => 'Colon' },
    { value => 'tab', label => 'Tab' },
   ],
  );

=head1 COPYRIGHT

Copyright (C) 2005-2022 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

__PACKAGE__->meta->make_immutable unless $ENV{"PF_SKIP_MAKE_IMMUTABLE"};
1;
