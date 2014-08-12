module SiteHelper
  def showMembers(org)
    return @member = org.members
  end
end
