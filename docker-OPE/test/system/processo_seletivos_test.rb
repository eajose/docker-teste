require "application_system_test_case"

class ProcessoSeletivosTest < ApplicationSystemTestCase
  setup do
    @processo_seletivo = processo_seletivos(:one)
  end

  test "visiting the index" do
    visit processo_seletivos_url
    assert_selector "h1", text: "Processo Seletivos"
  end

  test "creating a Processo seletivo" do
    visit processo_seletivos_url
    click_on "New Processo Seletivo"

    fill_in "Agenda", with: @processo_seletivo.Agenda
    fill_in "Lista candidatos", with: @processo_seletivo.Lista_candidatos
    fill_in "Nome processo", with: @processo_seletivo.Nome_processo
    fill_in "Status", with: @processo_seletivo.Status
    click_on "Create Processo seletivo"

    assert_text "Processo seletivo was successfully created"
    click_on "Back"
  end

  test "updating a Processo seletivo" do
    visit processo_seletivos_url
    click_on "Edit", match: :first

    fill_in "Agenda", with: @processo_seletivo.Agenda
    fill_in "Lista candidatos", with: @processo_seletivo.Lista_candidatos
    fill_in "Nome processo", with: @processo_seletivo.Nome_processo
    fill_in "Status", with: @processo_seletivo.Status
    click_on "Update Processo seletivo"

    assert_text "Processo seletivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Processo seletivo" do
    visit processo_seletivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Processo seletivo was successfully destroyed"
  end
end
