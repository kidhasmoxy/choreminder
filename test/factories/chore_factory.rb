Factory.define :chore do |chore|
  chore.sequence(:name) {|n| "Chore #{n}" }
  chore.description "This is a description of a nasty chore"
  chore.duration '15'
  chore.on_monday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_tuesday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_wednesday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_thursday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_friday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_saturday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.on_sunday { (1 + rand(2) == 2) ? 'false' : 'true'  }
  chore.active 'true'
  chore.association :household
end
