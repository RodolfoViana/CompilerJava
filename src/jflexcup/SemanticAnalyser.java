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
			System.err.println("Variável "+id+" já existe.");
			//System.exit(1);
		}else{
			ids.add(id);
			System.out.println("Adicionei a id: "+id);
		}		
		
	}

	public static void addVariavel(String id, String type) {		
		if(ids.contains(id)){
			System.err.println("Tentei adicionar a id: "+id+" de tipo "+type+", mas ela já existe!");
			System.exit(1);
		}else{
			ids.add(id);
			System.out.println("Adicionei a id: "+id+" de tipo "+type+".");
		}
	}
}