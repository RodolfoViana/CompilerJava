package jflexcup;

import java.util.ArrayList;

public class SemanticAnalyser {
	
	static ArrayList<String> ids = new ArrayList<String>();
	
	public SemanticAnalyser(){
		
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
