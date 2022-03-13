package com.file;

import java.io.File;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;

import javax.servlet.http.Part;


public class ProductImg {
	public static String var;
	public static String saveImg(String file_nam,Part part) {
		try {
			
			String path="C:\\Users\\hp\\Desktop\\eclipse\\ecom-web-application\\WebContent\\image\\product"+File.separator+file_nam;
//			before deploying use real path....
//			String path=request.getRealPath("image\product")+File.separator+file_nam;
			
			System.out.println(path);
			
			FileOutputStream fos=new FileOutputStream(path);
			InputStream is= part.getInputStream();
			
			byte[] data = new byte[is.available()];
			System.out.println(data);
			is.read(data);
			
			fos.write(data);
			fos.close();
			
			var="saved";
		}catch(Exception e) {
			var="error";
			System.out.println(e);
			
		}
		return var;
	}
	public static String deleteImg(String img_nam) {
		try{
            Files.deleteIfExists(Paths.get("C:\\Users\\hp\\Desktop\\eclipse\\ecom-web-application\\WebContent\\image\\product"+File.separator+img_nam));
            var="filedeleted";
		}
		catch(NoSuchFileException e){
            var="filenotexist";
        }
        catch(IOException e)
        {
            var="error";
        }
		return var;
	}

}
