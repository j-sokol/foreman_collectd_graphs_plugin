module ForemanCollectdGraphsPlugin
  # Example: Plugin's HostsController inherits from Foreman's HostsController
  class HostsController < ::HostsController
    # change layout if needed
    # layout 'foreman_collectd_graphs_plugin/layouts/new_layout'

    def new_action
      # automatically renders view/foreman_collectd_graphs_plugin/hosts/new_action
    end
  end
end
