actions    :install

attribute :download_file, :kind_of => String, :name_attribute => true
attribute :app, :kind_of => String
attribute :source, :kind_of => String, :default => nil
attribute :checksum, :kind_of => String, :default => nil
attribute :path, :kind_of => String, :default => nil

def initialize(*args)
  super
  @action = :install
end
