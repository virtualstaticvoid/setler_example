class Settings < Setler::Settings

  # without this, settings cannot be assigned without a mass-assignment error
  attr_accessible :var, :value

end
