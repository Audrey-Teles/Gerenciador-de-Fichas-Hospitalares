# frozen_string_literal: true

module Layouts

  def header_main_menu
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL                        |"
    puts "|---------------------------------------|"
  end

  def header_register
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CADASTRAR            |"
    puts "|---------------------------------------|"
  end

  def header_export
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > EXPORTAR             |"
    puts "|---------------------------------------|"
  end

  def header_query
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CONSULTAR            |"
    puts "|---------------------------------------|"
  end

  def header_register_agreement
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CADASTRAR > CONVÊNIO |"
    puts "|---------------------------------------|"
  end

  def header_register_patient
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CADASTRAR > PACIENTE |"
    puts "|---------------------------------------|"
  end

  def header_export_patient
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > EXPORTAR > PACIENTE  |"
    puts "|---------------------------------------|"
  end

  def header_export_agreement
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > EXPORTAR > CONVÊNIO  |"
    puts "|---------------------------------------|"
  end

  def header_query_agreement
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CONSULTAR > CONVÊNIO |"
    puts "|---------------------------------------|"
  end

  def header_query_patient
    system "cls"
    puts "|---------------------------------------|"
    puts "| MENU PRINCIPAL > CONSULTAR > PACIENTE |"
    puts "|---------------------------------------|"
  end

  def main_menu
    system "cls"
    header_main_menu
    puts "|---------------------------------------|"
    puts "| [1] Cadastrar dados                   |"
    puts "| [2] Consultar dados                   |"
    puts "| [3] Exportar dados                    |"
    puts "|---------------------------------------|"
    puts "| [0] Sair                              |"
    puts "|---------------------------------------|"
  end

  def register_menu
    system "cls"
    header_register
    puts "|---------------------------------------|"
    puts "| [1] Convênio                          |"
    puts "| [2] Paciente                          |"
    puts "|---------------------------------------|"
    puts "| [0] Voltar                            |"
    puts "|---------------------------------------|"
  end

  def export_menu
    system "cls"
    header_export
    puts "|---------------------------------------|"
    puts "| [1] Convênios                         |"
    puts "| [2] Pacientes                         |"
    puts "|---------------------------------------|"
    puts "| [0] Voltar                            |"
    puts "|---------------------------------------|"
  end

  def query_menu
    system "cls"
    header_query
    puts "|---------------------------------------|"
    puts "| [1] Convênios                         |"
    puts "| [2] Pacientes                         |"
    puts "|---------------------------------------|"
    puts "| [0] Voltar                            |"
    puts "|---------------------------------------|"
  end

  def exit
    system "cls"
    puts "|---------------------------------------|"
    puts "|          Programa encerrado!          |"
    puts "|---------------------------------------|"
  end

  def continue
    puts "|---------------------------------------|"
    puts "|   Pressione ENTER para continuar...   |"
    puts "|---------------------------------------|"
    gets
  end
end
