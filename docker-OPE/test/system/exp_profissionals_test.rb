require "application_system_test_case"

class ExpProfissionalsTest < ApplicationSystemTestCase
  setup do
    @exp_profissional = exp_profissionals(:one)
  end

  test "visiting the index" do
    visit exp_profissionals_url
    assert_selector "h1", text: "Exp Profissionals"
  end

  test "creating a Exp profissional" do
    visit exp_profissionals_url
    click_on "New Exp Profissional"

    fill_in "Cargo", with: @exp_profissional.Cargo
    fill_in "Data admissao", with: @exp_profissional.Data_admissao
    fill_in "Data saida", with: @exp_profissional.Data_saida
    fill_in "Nome empresa", with: @exp_profissional.Nome_Empresa
    click_on "Create Exp profissional"

    assert_text "Exp profissional was successfully created"
    click_on "Back"
  end

  test "updating a Exp profissional" do
    visit exp_profissionals_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @exp_profissional.Cargo
    fill_in "Data admissao", with: @exp_profissional.Data_admissao
    fill_in "Data saida", with: @exp_profissional.Data_saida
    fill_in "Nome empresa", with: @exp_profissional.Nome_Empresa
    click_on "Update Exp profissional"

    assert_text "Exp profissional was successfully updated"
    click_on "Back"
  end

  test "destroying a Exp profissional" do
    visit exp_profissionals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exp profissional was successfully destroyed"
  end
end
