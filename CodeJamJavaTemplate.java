package googlecodejam;

import java.io.*;
import java.text.*;
import java.util.*;

public class CodeJamJavaTemplate {
    public static void main(String[] args) throws Exception {
        String name = "A-large";
        String path = "F:/codejam/1B/";
        Scanner sc = new Scanner(new File(path + name + ".in"));
        DecimalFormat df = new DecimalFormat("0.00",
                DecimalFormatSymbols.getInstance(Locale.ENGLISH));
        sc.useLocale(Locale.ENGLISH);
        PrintWriter pw = new PrintWriter(path + name + "L.out");
        int testCases = sc.nextInt();
        for (int testCase = 1; testCase <= testCases; testCase++) {
            long A = sc.nextLong();
            int N = sc.nextInt();
            int res;

            pw.println("Case #" + testCase + ": " + res);
            pw.flush();
        }
        pw.close();
    }

}