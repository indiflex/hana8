import java.text.MessageFormat;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
	public static void main(String[] args) {
		//TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
		// to see how IntelliJ IDEA suggests fixing it.
		System.out.printf("Hello and welcome! %c\n", 65);

		String e1 = "  ";
		String e2 = " \u2000 ";
		System.out.println("e2 = " + e2);
		System.out.println(e1.isEmpty() + ", " + e1.isBlank());  // false, true
		System.out.println(e2.isEmpty() + ", " + e2.isBlank());  // false, true

		String str = "\u2000\u2001  Hello World  \u2002\u2003";
		System.out.println("trim(): '" + str.trim() + "'");     // 유니코드 공백 제거 안됨!
		System.out.println(MessageFormat.format("strip(): ''{0}''", str.strip()));   // 모든 공백 제거됨

		for (int i = 1; i <= 3; i++) {
			//TIP Press <shortcut actionId="Debug"/> to start debugging your code. We have set one <icon src="AllIcons.Debugger.Db_set_breakpoint"/> breakpoint
			// for you, but you can always add more by pressing <shortcut actionId="ToggleLineBreakpoint"/>.
			System.out.printf("i = %02d.%n", i);
		}
	}
}
