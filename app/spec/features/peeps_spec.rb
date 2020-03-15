require 'spec_helper'
require_relative '../helpers'

feature 'peeps' do

  scenario 'should list all peeps' do
  create_peep
  expect(page).to have_content("this is a test peep")
  end

  scenario 'should list all peeps in reverse chronological order' do
    create_peep
    Message.create(content: "another test peep", time_created: Time.now)
    expect(page).to have_content

  scenario 'should create peep' do
    create_peep
    expect(page).to have_content("this is a test peep")
  end

end