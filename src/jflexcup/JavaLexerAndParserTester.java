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
			parser p = new parser(scanner);
			Symbol s;
			p.parse();
			//p.parse();
			
			//p.debug_parse();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}