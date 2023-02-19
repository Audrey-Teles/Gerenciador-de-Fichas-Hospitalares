# frozen_string_literal: true

class Agreement
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def register_agreement(agreements = Array)
  header_register_agreement

  print "| Nome:"
  name = gets.chomp

  agreement = Agreement.new(name)

  agreements.append(agreement)
end

def export_agreement(name = String, agreements = Array)
  File.open("#{name}.txt", "a") do |file|
    file.truncate(0)
    file.write("|------ Informações dos Convênios ------|\n")
    i = 0
    agreements.each { |agreement|

      file.write("|-------- ID #{i + 1} --------\n")
      file.write("| Nome: #{agreement.name}\n")

      i = i + 1
    }
  end
end

def query_agreements(agreements = Array)
  puts("|------ Informações dos Convênios ------|")
  i = 0
  agreements.each { |agreement|
    puts("| Nome: #{agreement.name}")
    i = i + 1
  }
end
