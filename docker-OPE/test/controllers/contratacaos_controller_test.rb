require 'test_helper'

class ContratacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contratacao = contratacaos(:one)
  end

  test "should get index" do
    get contratacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_contratacao_url
    assert_response :success
  end

  test "should create contratacao" do
    assert_difference('Contratacao.count') do
      post contratacaos_url, params: { contratacao: { Data_admissao: @contratacao.Data_admissao, Data_demissao: @contratacao.Data_demissao, Registro_funcionario: @contratacao.Registro_funcionario, date: @contratacao.date } }
    end

    assert_redirected_to contratacao_url(Contratacao.last)
  end

  test "should show contratacao" do
    get contratacao_url(@contratacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_contratacao_url(@contratacao)
    assert_response :success
  end

  test "should update contratacao" do
    patch contratacao_url(@contratacao), params: { contratacao: { Data_admissao: @contratacao.Data_admissao, Data_demissao: @contratacao.Data_demissao, Registro_funcionario: @contratacao.Registro_funcionario, date: @contratacao.date } }
    assert_redirected_to contratacao_url(@contratacao)
  end

  test "should destroy contratacao" do
    assert_difference('Contratacao.count', -1) do
      delete contratacao_url(@contratacao)
    end

    assert_redirected_to contratacaos_url
  end
end
