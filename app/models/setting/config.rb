class Setting::Config < ::Setting
  def self.load_defaults
    return unless ActiveRecord::Base.connection.table_exists?('settings')
    return unless super

    Setting.transaction do
      [
        self.set('cgp-host', N_('IP address or hostname of collectd server running CGP'), 'example.com'),
      ].compact.each { |s| self.create s.update(:category => "Setting::Config") }
    end

    true
  end

  def self.humanized_category
    N_('collectd-graph-plugin')
  end
end
