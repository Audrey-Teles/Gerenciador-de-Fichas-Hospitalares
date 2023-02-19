# frozen_string_literal: true

class Patient
  attr_accessor :name, :age, :genre, :agreement

  def initialize(name, age, genre, agreement)
    @name = name
    @age = age
    @genre = genre
    @agreement = agreement
  end
end

def register_patient(patients = Array, agreements = Array)
  print "| Nome:"
  name = gets.chomp
  puts "|---------------------------------------|"

  print "| Idade:"
  age = gets.chomp
  puts "|---------------------------------------|"

  print "| Sexo (M ou F):"
  genre = gets.chomp
  puts "|---------------------------------------|"

  i = 0
  puts ""
  puts "|--------------- Convênio --------------|"
  agreements.each do |agreement|
    i = i + 1
    puts "| [#{i}] #{agreement.name}"
  end
  puts "|---------------------------------------|"
  puts "| [0] Voltar                            |"
  puts "|---------------------------------------|"

  print "| Informe o sua escolha:"
  agreement = gets.chomp

  if agreement == 0
    return true
  end

  patient = Patient.new(name, age, genre.upcase, agreement)

  patients.append(patient)
end

def export_patients(name = String, patients = Array, agreements = Array)
  File.open("#{name}.txt", "a") do |file|
    file.truncate(0)
    file.write("|------ Informações dos Pacientes ------|\n")
    i = 0
    patients.each { |patient|

      file.write("|-------- ID #{i + 1} --------|\n")
      file.write("| Nome: #{patient.name}\n")
      file.write("| Idade: #{patient.age}\n")
      file.write("| Sexo: #{patient.genre}\n")
      file.write("| Convênio: #{agreements[(patient.agreement).to_i - 1].name}\n")

      i = i + 1
    }
  end
end

def query_patients(patients = Array, agreements = Array)

  puts("|------ Informações dos Pacientes ------|")
  i = 0
  patients.each { |patient|
    puts("|-------- ID #{i + 1} --------|")
    puts("| Nome: #{patient.name}")
    puts("| Idade: #{patient.age}")
    puts("| Sexo: #{patient.genre}")
    puts("| Convênio: #{agreements[(patient.agreement).to_i - 1].name}")

    i = i + 1
  }
end
