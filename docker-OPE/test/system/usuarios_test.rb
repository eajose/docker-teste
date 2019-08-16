require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Cpf", with: @usuario.CPF
    fill_in "Data de nascimento", with: @usuario.Data_de_Nascimento
    fill_in "Idade", with: @usuario.Idade
    fill_in "Nome completo", with: @usuario.Nome_Completo
    fill_in "User", with: @usuario.User
    fill_in "Generate", with: @usuario.generate
    fill_in "Rails", with: @usuario.rails
    fill_in "Scaffold", with: @usuario.scaffold
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @usuario.CPF
    fill_in "Data de nascimento", with: @usuario.Data_de_Nascimento
    fill_in "Idade", with: @usuario.Idade
    fill_in "Nome completo", with: @usuario.Nome_Completo
    fill_in "User", with: @usuario.User
    fill_in "Generate", with: @usuario.generate
    fill_in "Rails", with: @usuario.rails
    fill_in "Scaffold", with: @usuario.scaffold
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
