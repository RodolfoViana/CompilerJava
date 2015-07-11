package jflexcup;

/****
 *
 * This is a simple stand-alone testing program for the Pascal lexer defined in
 * PascalLexer.JFLex.  The main method accepts an input file as its first
 * command-line argument.  It then calls the lexer's next_token method with an
 * input reader for that file.  The value of each Symbol returned by next_token
 * is printed to stanard output.
 *                                                                      <p> 
 * The following command-line invocation will read in the test program in the
 * file "lexer-test.p" and print out each token found in that file:
 *
 *     java PascalLexerTest lexer-test.p
 *
 */

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import java_cup.runtime.Symbol;

public class JavaLexerAndParserTester {
	

	public static void main(String[] argv) {

		try {

			Scanner scanner = new Scanner(new FileReader(argv[0]));
			analiseLexica(scanner);
			scanner = new Scanner(new FileReader(argv[0]));
			System.out.println("\n");
			analiseSintatica(scanner);
		} catch (Exception e) {
		}
		
	}

	public static void analiseLexica(Scanner scanner){

		System.out.println("-------- Análise Léxica--------");
		Symbol s;
		
		List<String> id = new ArrayList<String>();
		
		try {
			do {
				//s = scanner.next_token();
				s = scanner.debug_next_token();
				
				if (scanner.getTokenName(s.sym).equals("IDENTIFIER")){
					if (id.contains(scanner.yytext())){
						System.out.println("Erro na analise semântica o identificador " + scanner.yytext() + " ja foi utilizado" );
					}else {
						id.add(scanner.yytext());
					}
				}
				
			} while (s.sym != sym.EOF);
			
			System.out.println("Sem erros.");
		} catch (Exception e) {
			System.err.println(e.getMessage());
			System.err.println("A análise léxica resultou em erros. Não será feita a sintática!");
			System.err.println("--------    Sysexit!   --------");
			System.exit(1);
		}			


	}

	public static void analiseSintatica(Scanner s){

		System.out.println("-------- Análise Sintática--------");
		try {
			parser p = new parser(s);
			p.parse();
			System.out.println("Sem erros.");
		}
		catch (Exception e) {
			System.err.println(e.getMessage());
			System.err.println("--------      Sysexit!    --------");
			System.exit(1);

		}
		
	}
}