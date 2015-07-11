package jflexcup;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class SemanticAnalyser {
	
	static ArrayList<String> ids = new ArrayList<String>();
	static ArrayList<String> tipos = new ArrayList<String>();
	static HashMap<String, String> variaveis = new HashMap<String, String>();
	
	public SemanticAnalyser(){
		this.tipos = new ArrayList<String>(Arrays.asList("boolean", "char",
				"byte", "short", "int", "long", "float",
				"double", "String"));
		
	}
	
	public static void addID(String id){

		if(ids.contains(id)){
			System.err.println("Variável com esse nome '" + id + "' já existe.");
			System.exit(1);
		}else{
			ids.add(id);
			System.out.println("Adicionei a id: "+id);
		}	
	}
	
	/**
	 * funcao para adicionar uma variavel
	 * 
	 * @param nome
	 * @param tipo
	 */
	public void addVariavel(String nome, String tipo) {
		if (!tipos.contains(tipo.toLowerCase())) {
			System.out.println("Java não aceita variaveis com o tipo: "
					+ tipo);
			System.exit(1);
		} else {
			if (variaveis.containsKey(nome) || ids.contains(nome)) {
				System.out.println("Variável com esse nome '" + nome + "' já existe.");
				System.exit(1);
			} else {
				ids.add(nome);
				variaveis.put(nome, tipo.toLowerCase());
			}
		}
	}

}
