class Setting::foreman_collectd_graphs_plugin < ::Setting
  def self.load_defaults
    return unless ActiveRecord::Base.connection.table_exists?('settings')
    return unless super

    Setting.transaction do
      [
        self.set('cgp-host', N_('IP address or hostname of collectd server running CGP'), 'example.com'),
      ].compact.each { |s| self.create s.update(:category => "Setting::foreman_collectd_graphs_plugin") }
    end

    true
  end

  def self.humanized_category
    N_('foreman_collectd_graphs_plugin')
  end
end
