# vim: tabstop=2 shiftwidth=2 softtabstop=2

# Module: 'aimonb-systemd'
# Author: Aimon Bustardo <me at aimon dot net>

Puppet::Type.newtype(:systemctl) do
  @doc = "Puppet interface to systemctl."

  ensurable

  newparam(:name, :namevar => :true) do
     desc "The name of the service to configure."
  end 

  newproperty(:command) do
    desc "Command to pass to systemctl. One of 'enable', 'disable', 'start', 'stop', 'restart', 'try-restart', 'reload', 'reload-or-restart', 'reload-or-try-restart', 'mask', 'unmask'"
    newvalues('enable', 'disable', 'start', 'stop', 'restart', 'try-restart', 'reload', 'reload-or-restart', 'reload-or-try-restart', 'mask', 'unmask')
  end

end
