require "application_system_test_case"

class CurriculosTest < ApplicationSystemTestCase
  setup do
    @curriculo = curriculos(:one)
  end

  test "visiting the index" do
    visit curriculos_url
    assert_selector "h1", text: "Curriculos"
  end

  test "creating a Curriculo" do
    visit curriculos_url
    click_on "New Curriculo"

    fill_in "Cep", with: @curriculo.CEP
    fill_in "Cpf", with: @curriculo.CPF
    fill_in "Cidade", with: @curriculo.Cidade
    fill_in "Curso complementar", with: @curriculo.Curso_Complementar
    fill_in "Data nascimento", with: @curriculo.Data_Nascimento
    fill_in "Email", with: @curriculo.Email
    fill_in "Estado", with: @curriculo.Estado
    fill_in "Expprofissional", with: @curriculo.ExpProfissional
    fill_in "Formacao", with: @curriculo.Formacao
    fill_in "Logradouro", with: @curriculo.Logradouro
    fill_in "Nome completo", with: @curriculo.Nome_Completo
    fill_in "Rg", with: @curriculo.RG
    fill_in "Telefone", with: @curriculo.Telefone
    fill_in "Uf", with: @curriculo.UF
    click_on "Create Curriculo"

    assert_text "Curriculo was successfully created"
    click_on "Back"
  end

  test "updating a Curriculo" do
    visit curriculos_url
    click_on "Edit", match: :first

    fill_in "Cep", with: @curriculo.CEP
    fill_in "Cpf", with: @curriculo.CPF
    fill_in "Cidade", with: @curriculo.Cidade
    fill_in "Curso complementar", with: @curriculo.Curso_Complementar
    fill_in "Data nascimento", with: @curriculo.Data_Nascimento
    fill_in "Email", with: @curriculo.Email
    fill_in "Estado", with: @curriculo.Estado
    fill_in "Expprofissional", with: @curriculo.ExpProfissional
    fill_in "Formacao", with: @curriculo.Formacao
    fill_in "Logradouro", with: @curriculo.Logradouro
    fill_in "Nome completo", with: @curriculo.Nome_Completo
    fill_in "Rg", with: @curriculo.RG
    fill_in "Telefone", with: @curriculo.Telefone
    fill_in "Uf", with: @curriculo.UF
    click_on "Update Curriculo"

    assert_text "Curriculo was successfully updated"
    click_on "Back"
  end

  test "destroying a Curriculo" do
    visit curriculos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curriculo was successfully destroyed"
  end
end
