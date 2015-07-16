package jflexcup;
/* HelloWorld.java
 */

class Test {
	int i;
	//i = 0;   // isso deveria dar erro!!!
	
	public int outroMetodo(int num1, int num2){
	
		return num1;				// obs: testei aqui e as variaveis globais nao sai aceitas no return
	}
	
	/* Testes do chamadas de metodos (quantidade e tipos de parametros) */
	public void testaChamadaDeMetodo(){

		// outroMetodo();  		// da erro e deveria :)		metodo vazio
		// outroMetodo("",""); 	// da erro e deveria :)		argumentos de tipos diferentes
		// outroMetodo(i,i,i);	// da erro e deveria :)		numero diferentes de argumentos
		outroMetodo(i,i);		// nao da erro :)			metodo ok	
	}	
	
	/* Testes do retorno de metodos */
	public char outroMetodo2(int num1){
	
		//return num1;				// da erro semantico e deveria
		//return;					// da erro semantico e deveria, mas nao acusa erro semantico
		//return "";				// da erro semantico e deveria
		return 'a';					// retorno ok
	}
	
	/* Testes dos Operadores relacionais */
	public void testaOperadoresRelacionais(){
		boolean j;
		j = 4 > 5;
		j = 5 == 5;
		
		j = 6 >= 5;
		j = 6 <= 5;
		j = 4 < 5;
		
		int i;
		i = 0;
		i++;
		i--;
	}
	
	
	/* Testes do For */
	public void testaFor(){
	
		int j;
		for (j=1;j < 4;j++){ int ku;}
	}
	
	/* Testes do While */
	public void testaWhile(){
			
		while(true){
		int c;
		}
	}
}
