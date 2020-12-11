class NationMember
  attr_reader :name, :affiliation, :photo, :allies, :enemies

  def initialize(attr)
    @name = attr[:name]
    @affiliation = attr[:affiliation]
    @photo = attr[:photoUrl]
    @allies = attr[:allies]
    @enemies = attr[:enemies]
  end
end
