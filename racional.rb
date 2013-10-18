# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	# metodo inicializador (constructor)
	def initialize #(numerador1, denominador1, numerador2, denominador2)
	
	end

	# metodo sumar	
	def suma(numerador1, denominador1, numerador2, denominador2)
	
	racional1 = denominador2 * numerador1
	racional2 = denominador1 * numerador2

	denominador = denominador1 * denominador2
	numerador = racional1 + racional2

	mcd = gcd(numerador,denominador)

	puts "La suma es: #{numerador1}/#{denominador1} + #{numerador2}/#{denominador2} = #{numerador/mcd}/#{denominador/mcd}"	
	
	return numerador/mcd, denominador/mcd
	
	end



	#metodo restar
	def resta(numerador1, denominador1, numerador2, denominador2)

	racional1 = denominador2 * numerador1
	racional2 = denominador1 * numerador2

	denominador = denominador1 * denominador2
	numerador = racional1 - racional2

	mcd = gcd(numerador,denominador)

	puts "La resta es: #{numerador1}/#{denominador1} - #{numerador2}/#{denominador2} = #{numerador/mcd}/#{denominador/mcd}"
	
	return numerador/mcd, denominador/mcd
	end



	#metodo multiplicar 
	def producto(numerador1, denominador1, numerador2, denominador2)

	numerador = numerador1 * numerador2
	denominador = denominador1 * denominador2

	mcd = gcd(numerador,denominador)

	puts "El producto es: #{numerador1}/#{denominador1} * #{numerador2}/#{denominador2} = #{numerador/mcd}/#{denominador/mcd}"
	
	return numerador/mcd, denominador/mcd
	end



	#metodo division
	def division(numerador1, denominador1, numerador2, denominador2)

	numerador = numerador1 * denominador2
	denominador = denominador1 * numerador2

	mcd = gcd(numerador,denominador)

	puts "La división es: #{numerador1}/#{denominador1} / #{numerador2}/#{denominador2} = #{numerador/mcd}/#{denominador/mcd}"
	
	return numerador/mcd, denominador/mcd
	end



	# metodo mostrar
	def toString(numerador1, denominador1, numerador2, denominador2)
	
	#Llamamos al metodo maximo comun divisor (mcd)
	mcd1 = gcd(numerador1,denominador1)
	puts "------------------------------------------------------------"				
	puts "Primer numero racional: "
	puts "#{numerador1/mcd1} / #{denominador1/mcd1}"

	mcd2 = gcd(numerador2,denominador2)
	puts "Segundo numero racional: "
	puts "#{numerador2/mcd2} / #{denominador2/mcd2}"

	end


end




