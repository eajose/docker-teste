require "application_system_test_case"

class FormacaosTest < ApplicationSystemTestCase
  setup do
    @formacao = formacaos(:one)
  end

  test "visiting the index" do
    visit formacaos_url
    assert_selector "h1", text: "Formacaos"
  end

  test "creating a Formacao" do
    visit formacaos_url
    click_on "New Formacao"

    fill_in "Data formacao", with: @formacao.Data_formacao
    fill_in "Data inicio", with: @formacao.Data_inicio
    fill_in "Nome curso", with: @formacao.Nome_curso
    fill_in "Nome instituicao", with: @formacao.Nome_instituicao
    click_on "Create Formacao"

    assert_text "Formacao was successfully created"
    click_on "Back"
  end

  test "updating a Formacao" do
    visit formacaos_url
    click_on "Edit", match: :first

    fill_in "Data formacao", with: @formacao.Data_formacao
    fill_in "Data inicio", with: @formacao.Data_inicio
    fill_in "Nome curso", with: @formacao.Nome_curso
    fill_in "Nome instituicao", with: @formacao.Nome_instituicao
    click_on "Update Formacao"

    assert_text "Formacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Formacao" do
    visit formacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formacao was successfully destroyed"
  end
end
