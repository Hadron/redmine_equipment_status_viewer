# Redmine Equipment Status Viewer - An equipment manager plugin
# Copyright (C) 2010-2011  Devin Weaver
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# Load the normal Rails helper
require File.expand_path('../../../../../test/test_helper', __FILE__)

# Ensure that we are using the temporary fixture path
Engines::Testing.set_fixture_path

# raise localisation exception
# Used to find missing translation fields.
# http://dev.innovationfactory.nl/2009/05/04/rails-i18n-caveats-and-tips/
module I18n
  def self.just_raise(*args)
    raise args.first
  end
end
I18n.exception_handler = :just_raise
