require_relative '../model/calculator'
require 'rspec'


describe 'Calculator' do
	
	let(:calculator) {Calculator.new}

	it 'suma de 10 y 5 igual a 5' do
		expect(calculator.sum(10, 5)).to eq 15
	end

	it 'suma de -10 y -129 igual a -139' do
		expect(calculator.sum(-10, -129)).to eq -139
	end

	it 'resta de 10 y 5 (10 - 5) igual a 5' do 
		expect(calculator.subtract(10,5)).to eq 5
	end

	it 'resta de 5 y 10 (5 - 10) igual a -5' do 
		expect(calculator.subtract(5,10)).to eq -5
	end

	it 'Division entre 10 y 2 igual a 5' do
		expect(calculator.divide(10, 2)).to eq 5
	end

	it 'Division (entera) entre 10 y 3 igual a 3' do 
		expect(calculator.divide(10, 3)).to eq 3
	end 

	it 'Division ("flotante") entre 10 y 4 igual a 2.5' do 
		expect(calculator.divide(10, 4.0)).to eq 2.5
	end 

	it 'Multiplicacion de 10 y 5 igual a 50' do 
		expect(calculator.multiply(10, 5)).to eq 50
	end

	it 'Multiplicacion de 10 y -10 igual -100' do 
		expect(calculator.multiply(10, -10)).to eq -100
	end

	it 'Potencia de 10 al cuadrado igual a 100' do 
		expect(calculator.power(10, 2)).to eq 100
	end

	it 'Potencia de 8 al cubo igual a 512' do
		expect(calculator.power(8,3)).to eq 512
	end

	it 'Nombre de Calculator' do 
		expect(calculator.name()).to eq 'TDL Calculator'
	end

	it 'Promedio de 10, 5, 9' do
		expect(calculator.avg([10,5, 9])).to eq 8
	end

	it 'Mock' do 
		f = double
		content = StringIO.new("1\n1")
		allow(File).to receive(:open).and_yield(content)
		#allow(f).to receive(:each_line).and_return(["1", "1"])
		allow(f).to receive(:close).and_return(nil)
		expect(calculator.avg_from_file("FAKE PATH")).to eq 1.0
	end


end

