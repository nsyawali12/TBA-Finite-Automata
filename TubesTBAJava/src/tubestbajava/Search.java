/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tubestbajava;

/**
 *
 * @author User
 */
public class Search {
    private String lexic;
    private String formula;
    private int j;
    private int i;
    private int temp;
    private boolean found;
    private boolean negatif;
    
    public Search(String lexic, String formula, int j){
        i = 1;
        found = false;
        
        for ((i = length(lexic)) or (found = true)) {
            if (formula = lexic[i]) {
                j = i;
                found = true;
                j++;  
            }
        }
        if (found = false) {
        j = 0;
        }
    }


    
}
