package excel;

import java.awt.FileDialog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
public class ReadExcel{
    public static void main(String[] args) {
        ReadExcel obj = new ReadExcel();
        // 此处为我创建Excel路径：E:/zhanhj/studysrc/jxl下
        File file = new File(obj.fileName());
        List excelList = obj.readExcel(file);
        //List excelList = obj.readExcel(obj.getFile());
        if(excelList == null) {
        	System.out.println("文件为空");
        } else {
	        System.out.println("list中的数据打印出来");
	        for (int i = 0; i < excelList.size(); i++) {
	            List list = (List) excelList.get(i);
	            for (int j = 0; j < list.size(); j++) {
	                System.out.print(list.get(j) + "\t");
	            }
	            System.out.println();
	        }
        }

    }
	//去读Excel的方法readExcel，该方法的入口参数为一个File对象
    public List readExcel(File file) {
        try {
            // 创建输入流，读取Excel
            InputStream is = new FileInputStream(file.getAbsolutePath());
            // jxl提供的Workbook类
            Workbook wb = Workbook.getWorkbook(is);
            // Excel的页签数量
            int sheet_size = wb.getNumberOfSheets();
            for (int index = 0; index < sheet_size; index++) {
                List<List> outerList=new ArrayList<List>();
                // 每个页签创建一个Sheet对象
                Sheet sheet = wb.getSheet(index);
                // sheet.getRows()返回该页的总行数
                for (int i = 0; i < sheet.getRows(); i++) {
                    List innerList=new ArrayList();
                    // sheet.getColumns()返回该页的总列数
                    for (int j = 0; j < sheet.getColumns(); j++) {
                    	String cellinfo = sheet.getCell(j, i).getContents();
                        /*if(cellinfo.isEmpty()){
                            continue;
                        }*/
                        innerList.add(cellinfo);
                        //System.out.print(cellinfo);
                    }
                    outerList.add(i, innerList);
                    //System.out.println();
                }
                return outerList;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (BiffException e) {
        	JOptionPane.showMessageDialog(new JFrame().getContentPane(), "文件类型不符合！请选择.xls文件", "系统信息", JOptionPane.INFORMATION_MESSAGE); 
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
    //选择路径
    public String fileName() {
    	JFrame jframe = new JFrame();
    	FileDialog fdialog = new FileDialog(jframe,"打开",FileDialog.LOAD);
    	fdialog.setVisible(true);
		String fileName=fdialog.getFile();
		String fileDiretory = fdialog.getDirectory();
		fdialog.dispose();
		jframe.dispose();
		return fileDiretory+fileName;
    }
    /*public File selectFilesAndDir(){
        JFileChooser jfc=new JFileChooser();  
        //设置当前路径为桌面路径,否则将我的文档作为默认路径
        FileSystemView fsv = FileSystemView .getFileSystemView();
        jfc.setCurrentDirectory(fsv.getHomeDirectory());
        //JFileChooser.FILES_AND_DIRECTORIES 选择路径和文件
        jfc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES );  
        //弹出的提示框的标题
        jfc.showDialog(new JLabel(), "确定");  
        //用户选择的路径或文件
        File file=jfc.getSelectedFile();  
        return file;
    } 
    public File getFile(){
    	JFileChooser fc = new JFileChooser();
    	fc.setFileSelectionMode(JFileChooser.FILES_AND_DIRECTORIES);
    	// JFileChooser.FILES_ONLY	
    	// JFileChooser.DIRECTORIES_ONLY
    	int returnVal = fc.showOpenDialog(this);
    	File file_choosed = fc.getSelectedFile();
    	return file_choosed;
    }
    */
    
}
