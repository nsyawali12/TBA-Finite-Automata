/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tubestbajava;
import java.util.Scanner;
/**
 *
 * @author User
 */
public class TubesTBAJava {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String lexic;
        String formula;
        int i;
        int j;
        int temp;
        boolean negatif;
        boolean found;
        
        String length[] = new String[20]; 
        
        Scanner f = new Scanner(System.in);
        
        lexic = "+-x:()1234567890,E";
        System.out.println("Input(String): ");
        
        formula = f.next();
        temp = 0;
        negatif = false;
        
        formula.length();
        
        
        System.out.println("Input: ");
        for (int i = 0; i = length.formula) {
            if (formula[i] <> " ") {
                search(lexic,formula[i], j);
                
                if (j = 5) {
                    System.out.println(formula[i]+"|");
                } else
                    if (j = 6) {
                        System.out.println(formula[i]+"|");
                    } else
                        if (((j >= 1) and (j <= 4)) or (negatif == true)) {
                            if ((formula[i+1] == " ") and (negatif == false)) {
                                System.out.println(formula[i]+"|");
                            }else
                                negatif = true;
                                if ((negatif == true) and (((formula[i+1] = " ") or (i == formula.length()))or ((formula[i+1] = ')'))) or (formula[i+1] = "(")))) {
                                    System.out.println((formula[i],"|");
                                } else
                                    System.out.println(formula[i]);
                                   
                        }
                        
                    
            }
        }
            
        }
        
                
        
    }
    
}
