/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kwa.test;

import com.kwa.core.KWAMesg;
import com.kwa.modules.t010.T010;
import com.kwa.modules.t010.T010JpaController;
import com.kwa.modules.t010.T010PK;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author scumb46
 */
public class t010Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)  {
        KWAMesg mesg = new KWAMesg();
        T010 t010 = new T010(new T010PK("K1","T1"),"D2","A1");
        try {
            T010JpaController t010p = new T010JpaController(null,null);
            t010p.initTrx();
            //mesg = t010p.create(t010);
            //mesg = t010p.edit(t010);
            mesg = t010p.destroy(new T010PK("K1","T1"));
            System.out.println(mesg.getMesg());
            t010p.commitTrx();
            List<T010> lt010 = t010p.findT010Keyword("abce");
            Iterator itr = lt010.iterator();
            while(itr.hasNext()){
                T010 t010tmp = (T010) itr.next();
                System.out.println(t010tmp.toString());
            }
            
            
        } catch (Exception ex) {
            Logger.getLogger(t010Test.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
