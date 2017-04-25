Rails.application.routes.draw do
  get 'new_action', to: 'foreman_collectd_graphs_plugin/hosts#new_action'
end
