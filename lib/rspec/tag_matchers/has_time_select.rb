require 'rspec/tag_matchers/multiple_input_matcher'

module RSpec::TagMatchers
  # Matches inputs generated by Rails' +time_select+ helper.
  #
  # @example Matching a time select for an event's +start_time+
  #   it { should have_time_select.for(:event => :start_time) }
  #
  # @return [HasTimeSelect]
  def have_time_select
    HasTimeSelect.new
  end

  # A matcher that matches Rails' +time_select+ drop-downs.
  class HasTimeSelect < MultipleInputMatcher

    # Initializes a HasTimeSelect matcher.
    def initialize
      super(4 => HasSelect.new, 5 => HasSelect.new)
    end
  end
end
