require "application_system_test_case"

class CursosComplementaresTest < ApplicationSystemTestCase
  setup do
    @cursos_complementare = cursos_complementares(:one)
  end

  test "visiting the index" do
    visit cursos_complementares_url
    assert_selector "h1", text: "Cursos Complementares"
  end

  test "creating a Cursos complementare" do
    visit cursos_complementares_url
    click_on "New Cursos Complementare"

    fill_in "Data formacao", with: @cursos_complementare.Data_formacao
    fill_in "Data inicio", with: @cursos_complementare.Data_inicio
    fill_in "Nome curso", with: @cursos_complementare.Nome_curso
    fill_in "Nome instituicao", with: @cursos_complementare.Nome_instituicao
    click_on "Create Cursos complementare"

    assert_text "Cursos complementare was successfully created"
    click_on "Back"
  end

  test "updating a Cursos complementare" do
    visit cursos_complementares_url
    click_on "Edit", match: :first

    fill_in "Data formacao", with: @cursos_complementare.Data_formacao
    fill_in "Data inicio", with: @cursos_complementare.Data_inicio
    fill_in "Nome curso", with: @cursos_complementare.Nome_curso
    fill_in "Nome instituicao", with: @cursos_complementare.Nome_instituicao
    click_on "Update Cursos complementare"

    assert_text "Cursos complementare was successfully updated"
    click_on "Back"
  end

  test "destroying a Cursos complementare" do
    visit cursos_complementares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cursos complementare was successfully destroyed"
  end
end
