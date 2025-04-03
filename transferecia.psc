Algoritmo transferecia
	Definir pedido Como Entero;
	Definir respuesta como entero;
	Definir saldo_A como entero;
	Definir saldo_b Como entero;
	Definir menu Como Logico;
	Definir menu1 Como Logico;
	Definir Tcuenta Como Entero;
	Definir valor como entero;
	saldo_A=2000;
	saldo_b=1200;
	Repetir
		Escribir "cuenta A";
		Escribir "";
		Escribir "Pantalla Principal";
		Escribir "";
		Escribir "1.Consultar Saldo";
		Escribir "2.Transferir Dinero";
		Escribir "3.Pedir Dinero";
		Escribir "4.Cambiar Cuenta";
		Leer respuesta;
		Menu = Verdadero;
		Menu1 = Verdadero;
		
		segun respuesta hacer
			Caso 1:
			
				Escribir Sin Saltar "su saldo actual es de: ";
				Escribir saldo_A;
				Esperar Tecla;
				Limpiar Pantalla;
			Caso 2:
				Escribir "ha que cuenta deseas transferir?";
				Escribir "";
				Escribir "1. Cuenta B";
				leer Tcuenta;
				si Tcuenta==1 Entonces
					Escribir "cuanto enviaras?";
					Leer valor;
					si saldo_A<valor Entonces
						Escribir "saldo insuficiente";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						saldo_A = saldo_A - valor;
						saldo_b = saldo_b + valor;
						Escribir "has enviado valor a cuenta B";
						Esperar Tecla;
						Limpiar Pantalla;
					FinSi
				SiNo
					Escribir "cuenta inexistente";
					Esperar Tecla;
					Limpiar Pantalla;
					
				FinSi
			Caso 3:
				Escribir "cuanto deseas pedirle a master?";
				leer pedido;
				saldo_A = saldo_A + pedido;
				Escribir "El Dinero Ya Ha Sido Depositado A Tu Cuenta";
				esperar Tecla;
				Limpiar Pantalla;
			caso 4:
				Limpiar Pantalla;
				Escribir "Has cambiado a Cuenta B";
				Esperar Tecla;
				Limpiar Pantalla;
				Repetir
					Limpiar Pantalla;
					Escribir "cuenta B";
					Escribir "";
					Escribir "Pantalla Principal";
					Escribir "";
					Escribir "1.Consultar Saldo";
					Escribir "2.Transferir Dinero";
					Escribir "3.Pedir Dinero";
					Escribir "4.Cambiar Cuenta";
					Leer respuesta;
					Menu = Verdadero;
					segun respuesta hacer
						Caso 1:
							
							Escribir Sin Saltar "su saldo actual es de: ";
							Escribir saldo_b;
							Esperar Tecla;
							Limpiar Pantalla;
						Caso 2:
							Escribir "ha que cuenta deseas transferir?";
							Escribir "";
							Escribir "1. Cuenta A";
							leer Tcuenta;
							si Tcuenta==1 Entonces
								Escribir "cuanto enviaras?";
								Leer valor;
								si saldo_b<valor Entonces
									Escribir "saldo insuficiente";
									Esperar Tecla;
									Limpiar Pantalla;
								SiNo
									saldo_b = saldo_b - valor;
									saldo_a = saldo_a + valor;
									Escribir "has enviado valor a cuenta A";
									Esperar Tecla;
									Limpiar Pantalla;
								FinSi
							SiNo
								Escribir "cuenta inexistente";
								Esperar Tecla;
								Limpiar Pantalla;	
							FinSi
						Caso 3:
							Escribir "cuanto deseas pedirle a master?";
							leer pedido;
							Escribir "El Dinero Ya Ha Sido Depositado A Tu Cuenta";
							saldo_b = saldo_b + pedido;
							esperar Tecla;
							Limpiar Pantalla;
						caso 4: 
							Menu1 = Falso;
						De Otro Modo:
							Escribir "Opcion inexistente";
							Esperar Tecla;
							Limpiar Pantalla;
							
					FinSegun
				Mientras Que Menu1	
				Limpiar Pantalla;
				Escribir "Has cambiado a cuenta A";
				Esperar Tecla;
				Limpiar Pantalla;
			De Otro Modo:
				Escribir "Opcion inexistente";
				Esperar Tecla;
				Limpiar Pantalla;
		FinSegun
	Mientras Que Menu
FinAlgoritmo
