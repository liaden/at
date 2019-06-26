require "at/version"

require 'active_support/core_ext/date'
require 'active_support/core_ext/date_time'
require 'active_support/core_ext/time'
require 'active_support/core_ext/numeric/time'

[ :today,
  :yesterday,
  :tomorrow,
  :current
].each do |f|
  define_method f do
    Date.send(f)
  end
end

[ :now ].each do |f|
  define_method(f) do
    DateTime.send(f)
  end
end
