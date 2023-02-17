/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.cifpcarlosiii.jaspertestmvn;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
/**
 *
 * @author juanvi
 */
public class JasperTestLoader {
//    private static final String CON_STR = "jdbc:mysql://localhost:3306/pruebareportes";
//    private static final String USER = "root";
//    private static final String PASS = "";    
    private static final String CON_STR = "jdbc:postgresql://192.168.56.106/dbcristales";
    private static final String USER = "administrador";
    private static final String PASS = "ivan";
//    private static final String REPORT = "report3.jasper"; //"resources/reports/report3.jasper";    
//    private static final String REPORT_JXML = "report2.jrxml"; //"resources/reports/report3.jrxml"; 

//    private static final String SUBREPORT_JXML = "report2_subreport1.jrxml";
    // se que no es la manera pero funciona y si funciona no se toca 
    static String reportJXML; //"resources/reports/report3.jrxml";   
//    private static final String SUBREPORT_JXML = "report2_subreport1.jrxml";    
    private JasperReport reporte;
    private JasperPrint jasperPrint;

    public void load() throws ClassNotFoundException, SQLException, JRException {
//        Class.forName("com.mysql.jdbc.Driver");
        Class.forName("org.postgresql.Driver");
        Connection conexion = (Connection) DriverManager.getConnection(CON_STR, USER, PASS);

        JasperDesign jasperDesign = JRXmlLoader.load(getClass().getResourceAsStream(reportJXML)); //new File(REPORT_JXML)
        reporte = JasperCompileManager.compileReport(jasperDesign);

        // Sencillo
        jasperPrint = JasperFillManager.fillReport(reporte, null, conexion);

//        // CON SUBREPORT
//        jasperDesign = JRXmlLoader.load(getClass().getResourceAsStream(SUBREPORT_JXML));
//        JasperReport subreport = JasperCompileManager.compileReport(jasperDesign);
//        HashMap params = new HashMap();
//        params.put("SUBREPORT", subreport);        
//        jasperPrint = JasperFillManager.fillReport(reporte, params, conexion);  
//        // CON PARÁMETROS Y PRECOMPILADO
//        HashMap params = new HashMap();
//        params.put("date",new Date());
//        reporte = (JasperReport) JRLoader.loadObject(getClass().getResourceAsStream(REPORT));//new File(REPORT));
//        jasperPrint = JasperFillManager.fillReport(reporte, null, conexion);        
    }
    
    public JasperReport getReporte() {
        return reporte;
    }

    public JasperPrint getJasperPrint() {
        return jasperPrint;
    }
}
