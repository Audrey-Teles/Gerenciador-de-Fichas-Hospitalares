require_relative 'options/registerPatient'
require_relative 'options/registerAgreement'
require_relative 'layouts'

include Layouts

patients = Array.new
agreements = Array.new

main_menu
print "| Informe sua escolha ->"
option = gets.chomp

i = 0
close = false

while option != 0
  system 'clear'
  if i != 0
    main_menu
    print "| Informe sua escolha ->"
    option = gets.chomp
  end
  i = i + 1
  while true
    case option.to_i
    when 1 # Cadastrar
      while true
        register_menu
        print "| Informe sua escolha ->"
        option = gets.chomp

        case option.to_i
        when 0
          break
        when 1
          header_register_agreement
          register_agreement(agreements)
          continue
          break
        when 2
          header_register_patient
          pass = register_patient(patients, agreements)
          continue
          break
        else
          # type code here
        end
      end
      break
    when 2 # Consultar
      while true
        query_menu
        print "| Informe sua escolha ->"
        option = gets.chomp

        case option.to_i
        when 0
          break
        when 1
          header_query_agreement
          query_agreements(agreements)
          continue
          break
        when 2
          header_query_patient
          query_patients(patients, agreements)
          continue
          break
        else
          # type code here
        end
      end
      break
    when 3 # Exportar
      while true
        export_menu
        print "| Informe sua escolha ->"
        option = gets.chomp

        case option.to_i
        when 0
          break
        when 1
          header_register_agreement
          export_agreement("agreements", agreements)
          puts "|---------------------------------------|"
          puts "|     DADOS EXPORTADOS COM SUCESSO!     |"
          puts "|---------------------------------------|"
          continue
          break
        when 2
          header_export_patient
          export_patients("pacientes", patients, agreements)
          puts "|---------------------------------------|"
          puts "|     DADOS EXPORTADOS COM SUCESSO!     |"
          puts "|---------------------------------------|"

          continue
          break
        else
          # type code here
        end
      end
      break
    when 0
      close = true
      break
    else
      puts "Escolha inválida, tente novamente!"
    end
  end
  if close
    break
  end
end

exit