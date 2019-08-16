require 'test_helper'

class CursosComplementaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursos_complementare = cursos_complementares(:one)
  end

  test "should get index" do
    get cursos_complementares_url
    assert_response :success
  end

  test "should get new" do
    get new_cursos_complementare_url
    assert_response :success
  end

  test "should create cursos_complementare" do
    assert_difference('CursosComplementare.count') do
      post cursos_complementares_url, params: { cursos_complementare: { Data_formacao: @cursos_complementare.Data_formacao, Data_inicio: @cursos_complementare.Data_inicio, Nome_curso: @cursos_complementare.Nome_curso, Nome_instituicao: @cursos_complementare.Nome_instituicao } }
    end

    assert_redirected_to cursos_complementare_url(CursosComplementare.last)
  end

  test "should show cursos_complementare" do
    get cursos_complementare_url(@cursos_complementare)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursos_complementare_url(@cursos_complementare)
    assert_response :success
  end

  test "should update cursos_complementare" do
    patch cursos_complementare_url(@cursos_complementare), params: { cursos_complementare: { Data_formacao: @cursos_complementare.Data_formacao, Data_inicio: @cursos_complementare.Data_inicio, Nome_curso: @cursos_complementare.Nome_curso, Nome_instituicao: @cursos_complementare.Nome_instituicao } }
    assert_redirected_to cursos_complementare_url(@cursos_complementare)
  end

  test "should destroy cursos_complementare" do
    assert_difference('CursosComplementare.count', -1) do
      delete cursos_complementare_url(@cursos_complementare)
    end

    assert_redirected_to cursos_complementares_url
  end
end
