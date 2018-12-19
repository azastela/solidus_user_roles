
Spree::PermissionSets::Base.subclasses.each do |permission|
  Spree::PermissionSet.where(name: permission.to_s.split('PermissionSets::').last, set: permission.to_s).first_or_create
end
