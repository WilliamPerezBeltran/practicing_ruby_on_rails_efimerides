# frozen_string_literal: true

require 'test_helper'

class EfimeridasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @efimerida = efimeridas(:one)
  end

  test 'should get index' do
    get efimeridas_url
    assert_response :success
  end

  test 'should get new' do
    get new_efimerida_url
    assert_response :success
  end

  test 'should create efimerida' do
    assert_difference('Efimerida.count') do
      post efimeridas_url, params: { efimerida: { category_id: @efimerida.category_id, date: @efimerida.date, text: @efimerida.text } }
    end

    assert_redirected_to efimerida_url(Efimerida.last)
  end

  test 'should show efimerida' do
    get efimerida_url(@efimerida)
    assert_response :success
  end

  test 'should get edit' do
    get edit_efimerida_url(@efimerida)
    assert_response :success
  end

  test 'should update efimerida' do
    patch efimerida_url(@efimerida), params: { efimerida: { category_id: @efimerida.category_id, date: @efimerida.date, text: @efimerida.text } }
    assert_redirected_to efimerida_url(@efimerida)
  end

  test 'should destroy efimerida' do
    assert_difference('Efimerida.count', -1) do
      delete efimerida_url(@efimerida)
    end

    assert_redirected_to efimeridas_url
  end
end
