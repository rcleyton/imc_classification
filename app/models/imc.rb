class Imc < ApplicationRecord
  validates :height, :weight, presence: true

  before_validation :calculate_imc, :health_status
  
  private
  def calculate_imc
    self.imc = "%.1f" % (weight / (height * height))
  end

  def health_status
    if imc <= 18.5
      self.classification = "Magreza"
      self.obesity = "Grau I"
    elsif imc >= 18.5 && imc <=24.9
      self.classification = "Peso Normal"
      self.obesity = "0"
    elsif imc >= 25 && imc <=29.9
      self.classification = "Sobrepeso"
      self.obesity = "Grau I"
    elsif imc >= 30 && imc <=39.9
      self.classification = "Obesidade"
      self.obesity = "Grau II"
    else
      self.classification = "Obesidade"
      self.obesity = "Grau III"
    end 
  end
end
