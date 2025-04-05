Algoritmo transferecia
	// empezamos definiendo nuestras variables.
	Definir pedido Como Entero;
	Definir respuesta como entero;
	Definir saldo_A como entero;
	Definir saldo_b Como entero;
	Definir menu Como Logico;
	Definir menu1 Como Logico;
	Definir Tcuenta Como Entero;
	Definir valor como entero;

	// luego asignamos valores a las variables.
	saldo_A=2000;
	saldo_b=1200;
	Menu = Verdadero;
	Menu1 = Verdadero;
	
	//estructuramos el bloque de codigo principal en donde estaran todos los procesos y la pantalla principal.
	Repetir
		
		// creamos nuestro menu/pantalla principal.
		Escribir "cuenta A";
		Escribir "";
		Escribir "Pantalla Principal";
		Escribir "";
		Escribir "1.Consultar Saldo";
		Escribir "2.Transferir Dinero";
		Escribir "3.Pedir Dinero";
		Escribir "4.Cambiar Cuenta";
		Leer respuesta;
		
		//empezamos a crear los casos posibles.
		segun respuesta hacer
			Caso 1:
				
			//en caso de que el usuario elija mostrar el saldo.
				Escribir Sin Saltar "su saldo actual es de: ";
				Escribir saldo_A;
				Esperar Tecla;
				Limpiar Pantalla;
			Caso 2:
				
				//en caso de que el usuario quiera transferir dinero de cuenta A a ceunta B.
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
				
				//en caso de que el usuario elija pedir dinero a la cuenta master.
				Escribir "cuanto deseas pedirle a master?";
				leer pedido;
				saldo_A = saldo_A + pedido;
				Escribir "El Dinero Ya Ha Sido Depositado A Tu Cuenta";
				esperar Tecla;
				Limpiar Pantalla;
			caso 4:
				
				//en caso de que el usuario quiera cambiar de cuenta A a Cuenta B.
				//avisamos al usuario que ha cambiado de cuenta.
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
							
							//en caso de que el usuario quiera.
							Escribir Sin Saltar "su saldo actual es de: ";
							Escribir saldo_b;
							Esperar Tecla;
							Limpiar Pantalla;
						Caso 2:
							
							//en caso de que el usuario quiera transferir dinero de la Cuenta B a al Cuenta A.
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
							
							//en caso de que el usuario quiera perdirle dinero a la cuenta master.
							Escribir "cuanto deseas pedirle a master?";
							leer pedido;
							Escribir "El Dinero Ya Ha Sido Depositado A Tu Cuenta";
							saldo_b = saldo_b + pedido;
							esperar Tecla;
							Limpiar Pantalla;
						caso 4: 
							
							//en caso de que el usuario quiera cambiar de cuenta B a Cuenta A.
							Menu1 = Falso;
						De Otro Modo:
							Escribir "Opcion inexistente";
							Esperar Tecla;
							Limpiar Pantalla;
							
					FinSegun
				Mientras Que Menu1	
				
				//avisamos al usuario que ha cambiado de cuenta.
				Limpiar Pantalla;
				Escribir "Has cambiado a cuenta A";
				Esperar Tecla;
				Limpiar Pantalla;
			De Otro Modo:
				
				// si no se elijen ninguno de esos casos.
				Escribir "Opcion inexistente";
				Esperar Tecla;
				Limpiar Pantalla;
		FinSegun
	Mientras Que Menu
FinAlgoritmo
