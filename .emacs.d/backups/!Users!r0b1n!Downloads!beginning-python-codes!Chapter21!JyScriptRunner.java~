package jython;


import java.util.Properties;

import org.python.util.PythonInterpreter;
import org.python.core.PySystemState;


/**
 * Runs Jython scripts.
 */
public class JyScriptRunner {
    
    private PythonInterpreter interp;
    
    /**
     * Initializes the Jython interpreter.
     */
    public void initialize(String pythonHome) {
        Properties props = new Properties();
        
        props.put("python.home", pythonHome);
        
        PythonInterpreter.initialize(
            System.getProperties(),
            props,
            new String[0]);
                    
        interp = new PythonInterpreter(null, new PySystemState());                                 
    }
     
    /**
     * Runs the given script.
     */
    public void run(String fileName) {
        interp.execfile(fileName);
    }
    
    
    public static void main(String[] args) {
        String fileName = args[0];
        
        JyScriptRunner runner = new JyScriptRunner();
        
        String pythonHome = System.getProperty("python.home");
        
        runner.initialize(pythonHome);
        
        runner.run(fileName);
    }
}
