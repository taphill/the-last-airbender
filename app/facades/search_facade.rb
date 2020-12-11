class SearchFacade
  def self.nation_members(nation) 
    nation_member_data = AvatarService.nation_member_data(nation)

    nation_member_data.map do |member_data|
      NationMember.new(member_data)  
    end
  end
end
