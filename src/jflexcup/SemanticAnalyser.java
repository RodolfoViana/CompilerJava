package jflexcup;

import java.util.ArrayList;

public class SemanticAnalyser {
	
	static ArrayList<String> ids = new ArrayList<String>();
	
	public SemanticAnalyser(){
		
	}
	
	public static void addID(String id){
		ids.add(id);
		System.out.println("Adicionei a id: "+id);
	}

}
