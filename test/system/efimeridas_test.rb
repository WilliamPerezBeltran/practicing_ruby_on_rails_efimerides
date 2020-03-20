# frozen_string_literal: true

require 'application_system_test_case'

class EfimeridasTest < ApplicationSystemTestCase
  setup do
    @efimerida = efimeridas(:one)
  end

  test 'visiting the index' do
    visit efimeridas_url
    assert_selector 'h1', text: 'Efimeridas'
  end

  test 'creating a Efimerida' do
    visit efimeridas_url
    click_on 'New Efimerida'

    fill_in 'Category', with: @efimerida.category_id
    fill_in 'Date', with: @efimerida.date
    fill_in 'Text', with: @efimerida.text
    click_on 'Create Efimerida'

    assert_text 'Efimerida was successfully created'
    click_on 'Back'
  end

  test 'updating a Efimerida' do
    visit efimeridas_url
    click_on 'Edit', match: :first

    fill_in 'Category', with: @efimerida.category_id
    fill_in 'Date', with: @efimerida.date
    fill_in 'Text', with: @efimerida.text
    click_on 'Update Efimerida'

    assert_text 'Efimerida was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Efimerida' do
    visit efimeridas_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Efimerida was successfully destroyed'
  end
end
