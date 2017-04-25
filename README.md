# Foreman-collectd-plugin

Collectd plugin for foreman showing graphs from collectd graph panel running on hostname set in config file.

## Installation

See [How_to_Install_a_Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)
for how to install Foreman plugins

## Config file

create file collectd-graph-plugin.yml in /etc/foreman/plugins with following:

  :collectd-graph-plugin:
    :hostname: collectd.weedtime.cz/CGP/

where on collectd.weedtime.cz/CGP/ is running collectd graph pannel, see https://github.com/pommi/CGP

## Contributing

Fork and send a Pull Request. Thanks!

## Copyright

Copyright (c) 2017 Jan Sokol

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
