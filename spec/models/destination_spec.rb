require 'spec_helper'

describe Destination do

  it { should have_valid(:title).when('The destination', 'Nepal Tourism', '2011 Year') }
  it { should_not have_valid(:title).when('""', '#*$*@&', 'Dest') }

end