user_prefs_path = File.join(WS_LIBRARY, "Preferences")

## Finder Customization
#
pivotal_workstation_defaults "Finder windows default to list view" do
  domain "#{user_prefs_path}/.com.apple.Finder"
  key "FXPreferredViewStyle"
  string "Nlsv"
end

pivotal_workstation_defaults "Make path bar relative to the home directory" do
  domain "#{user_prefs_path}/.com.apple.finder"
  key "PathBarRootAtHome"
  boolean true
end

# pivotal_workstation_defaults "" do
#   domain "#{user_prefs_path}/."
#   key ""
# end
