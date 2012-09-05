## Finder Customization
#
pivotal_workstation_defaults "Finder windows default to list view (1/2)" do
  domain "com.apple.finder"
  key "FXPreferredViewStyle"
  string "Nlsv"
end

pivotal_workstation_defaults "Finder windows default to list view (2/2)" do
  domain "com.apple.finder"
  key "FK_SavedViewStyle"
  string "Nlsv"
end

pivotal_workstation_defaults "Show the path bar" do
  domain "com.apple.finder"
  key "ShowPathbar"
  boolean true
end

pivotal_workstation_defaults "Make path bar relative to the home directory" do
  domain "com.apple.finder"
  key "PathBarRootAtHome"
  boolean true
end


pivotal_workstation_defaults "Make home the default for new windows" do
  domain "com.apple.finder"
  key "NewWindowTarget"
  string "PfHm"
end

pivotal_workstation_defaults "Wider sidebar" do
  domain "com.apple.finder"
  key "FK_SidebarWidth" 
  integer 220
end

## Dock customization
#
pivotal_workstation_defaults "Position the dock right" do
  domain "com.apple.dock"
  key "orientation"
  string "right"
end

pivotal_workstation_defaults "Turn autohide on" do
  domain "com.apple.dock"
  key "autohide"
  boolean true
end

pivotal_workstation_defaults "Make the tilesize smaller" do
  domain "com.apple.dock"
  key "tilesize"
  integer 39
end

## Mouse
#
pivotal_workstation_defaults "Enable two button mouse" do
  domain "com.apple.driver.AppleBluetoothMultitouch.mouse"
  key "MouseButtonMode"
  string "TwoButton"
end

