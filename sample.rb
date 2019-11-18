require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('mwaramutse')
  end
  every(3.minutes, 'send')
end
