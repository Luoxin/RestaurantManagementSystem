package thread;

import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class SubmitTherad {
	public  ArrayList<String>  submitThread(String submit,int i) {  

		ExecutorService executorService=Executors.newCachedThreadPool();  
		Callable<ArrayList<String>> orderIDs=new MyThread2(submit,i);
		Future future=executorService.submit(orderIDs);  

		try {
			return (ArrayList<String>) future.get();
			
		} catch (InterruptedException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ExecutionException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null; 
	}  
}
