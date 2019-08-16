require 'test_helper'

class ExpProfissionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exp_profissional = exp_profissionals(:one)
  end

  test "should get index" do
    get exp_profissionals_url
    assert_response :success
  end

  test "should get new" do
    get new_exp_profissional_url
    assert_response :success
  end

  test "should create exp_profissional" do
    assert_difference('ExpProfissional.count') do
      post exp_profissionals_url, params: { exp_profissional: { Cargo: @exp_profissional.Cargo, Data_admissao: @exp_profissional.Data_admissao, Data_saida: @exp_profissional.Data_saida, Nome_Empresa: @exp_profissional.Nome_Empresa } }
    end

    assert_redirected_to exp_profissional_url(ExpProfissional.last)
  end

  test "should show exp_profissional" do
    get exp_profissional_url(@exp_profissional)
    assert_response :success
  end

  test "should get edit" do
    get edit_exp_profissional_url(@exp_profissional)
    assert_response :success
  end

  test "should update exp_profissional" do
    patch exp_profissional_url(@exp_profissional), params: { exp_profissional: { Cargo: @exp_profissional.Cargo, Data_admissao: @exp_profissional.Data_admissao, Data_saida: @exp_profissional.Data_saida, Nome_Empresa: @exp_profissional.Nome_Empresa } }
    assert_redirected_to exp_profissional_url(@exp_profissional)
  end

  test "should destroy exp_profissional" do
    assert_difference('ExpProfissional.count', -1) do
      delete exp_profissional_url(@exp_profissional)
    end

    assert_redirected_to exp_profissionals_url
  end
end
