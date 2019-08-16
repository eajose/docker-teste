require "application_system_test_case"

class ContratacaosTest < ApplicationSystemTestCase
  setup do
    @contratacao = contratacaos(:one)
  end

  test "visiting the index" do
    visit contratacaos_url
    assert_selector "h1", text: "Contratacaos"
  end

  test "creating a Contratacao" do
    visit contratacaos_url
    click_on "New Contratacao"

    fill_in "Data admissao", with: @contratacao.Data_admissao
    fill_in "Data demissao", with: @contratacao.Data_demissao
    fill_in "Registro funcionario", with: @contratacao.Registro_funcionario
    fill_in "Date", with: @contratacao.date
    click_on "Create Contratacao"

    assert_text "Contratacao was successfully created"
    click_on "Back"
  end

  test "updating a Contratacao" do
    visit contratacaos_url
    click_on "Edit", match: :first

    fill_in "Data admissao", with: @contratacao.Data_admissao
    fill_in "Data demissao", with: @contratacao.Data_demissao
    fill_in "Registro funcionario", with: @contratacao.Registro_funcionario
    fill_in "Date", with: @contratacao.date
    click_on "Update Contratacao"

    assert_text "Contratacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Contratacao" do
    visit contratacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contratacao was successfully destroyed"
  end
end
