class Setting::CTDgraphs < ::Setting

  def self.load_defaults
    return unless super

    Setting.transaction do
      [
        self.set('cgp-host', N_('IP address or hostname of collectd server running CGP'), 'example.com'),
      ].compact.each { |s| self.create s.update(:category => "Setting::CTDgraphs")}
    end

    true
  end
end
