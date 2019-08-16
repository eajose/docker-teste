require 'test_helper'

class ProcessoSeletivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processo_seletivo = processo_seletivos(:one)
  end

  test "should get index" do
    get processo_seletivos_url
    assert_response :success
  end

  test "should get new" do
    get new_processo_seletivo_url
    assert_response :success
  end

  test "should create processo_seletivo" do
    assert_difference('ProcessoSeletivo.count') do
      post processo_seletivos_url, params: { processo_seletivo: { Agenda: @processo_seletivo.Agenda, Lista_candidatos: @processo_seletivo.Lista_candidatos, Nome_processo: @processo_seletivo.Nome_processo, Status: @processo_seletivo.Status } }
    end

    assert_redirected_to processo_seletivo_url(ProcessoSeletivo.last)
  end

  test "should show processo_seletivo" do
    get processo_seletivo_url(@processo_seletivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_processo_seletivo_url(@processo_seletivo)
    assert_response :success
  end

  test "should update processo_seletivo" do
    patch processo_seletivo_url(@processo_seletivo), params: { processo_seletivo: { Agenda: @processo_seletivo.Agenda, Lista_candidatos: @processo_seletivo.Lista_candidatos, Nome_processo: @processo_seletivo.Nome_processo, Status: @processo_seletivo.Status } }
    assert_redirected_to processo_seletivo_url(@processo_seletivo)
  end

  test "should destroy processo_seletivo" do
    assert_difference('ProcessoSeletivo.count', -1) do
      delete processo_seletivo_url(@processo_seletivo)
    end

    assert_redirected_to processo_seletivos_url
  end
end
