package com.pocket.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;


public class UploadFileUtils {
	
	private static final Logger logger=(Logger) LoggerFactory.getLogger(UploadFileUtils.class);
	
	
	  public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
	        // �ߺ��� ���ϸ� ������ ���� �ʱ� ���� UUID Ű���� ����
	        UUID uuid = UUID.randomUUID();
	        // �������ϸ� = UUID + _ + �������ϸ�
	        String savedName = uuid.toString() + "_" + originalName;
	        // 1. �⺻ ���� ��� + ��¥�� ��� ����
	        String savedPath = calcPath(uploadPath);
	        // �⺻ ���� ��� + ��¥�� ��� + ���ϸ� ���� ��ü ����
	        // File(String parent, String child) : parent ���� ����� child ��� ���Ͽ� ���� File ��ü�� ����
	        File target = new File(uploadPath + savedPath, savedName);
	        // fileData�� target ��ü�� ����
	        FileCopyUtils.copy(fileData, target);
	        // Ȯ���ڸ� ����
	        String formatName = originalName.substring(originalName.lastIndexOf(".") + 1);
	        // ���ε� ���ϸ� : ����� �̹��� ���ϸ� or �Ϲ� ���ϸ�
	        String uploadFileName = null;
	        // Ȯ���ڿ� ���� ����� ���� or �Ϲ� ���� ������ ����
	        if (MediaUtils.getMediaType(formatName) != null) {
	            // 3. ����� ����
	            uploadFileName = makeThumbnail(uploadPath, savedPath, savedName);
	        } else {
	            // 4. ������ ����
	            uploadFileName = makeIcon(uploadPath, savedPath, savedName);
	        }
	        return uploadFileName;
	    }

	    // 1. ���� ������ ���� ��¥ ��� ����
	    private static String calcPath(String uploadPath) {
	        Calendar calendar = Calendar.getInstance();
	        // �� : /2017
	        String yearPath = File.separator + calendar.get(Calendar.YEAR);
	        // �� + �� : /2017/12
	        String monthPath = yearPath + File.separator + new DecimalFormat("00").format(calendar.get(Calendar.MONTH) + 1);
	        // /�� + �� + �� : /2017/12/01
	        String datePath = monthPath + File.separator + new DecimalFormat("00").format(calendar.get(Calendar.DATE));
	        // 2. �⺻ ���� ���� ��� + ��¥ ��� ����
	        makeDir(uploadPath, yearPath, monthPath, datePath);
	        logger.info(datePath);
	        return datePath;
	    }

	    // 2. ���� ���� ��� ���� + ��¥ ��� ����
	    private static void makeDir(String uploadPath, String... paths) {
	        // ��¥ ��ΰ� �̹� ���� O : �޼��� ����
	        if (new File(uploadPath + paths[paths.length - 1]).exists()) {
	            return;
	        }
	        // ��¥ ��ΰ� ���� X : ��� ����
	        for (String path : paths) {
	            // �⺻ ��� + ��¥ ��ο� �ش��ϴ� ���ϰ�ü ����
	            File dirPath = new File(uploadPath + path);
	            // ���� ��ΰ� ���� X
	            if (!dirPath.exists()) {
	                // ��� ����
	                dirPath.mkdir();
	            }
	        }

	    }

	    // 3. ����� ���� : �̹��� ���� O
	    private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception {
	        // BufferedImage : ���� �̹��� X, �޸𸮻��� �̹����� �ǹ��ϴ� ��ü
	        // ���� ������ �޸𸮻� �ε�
	        BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
	        // ������ ũ�⿡ �°� ���� �̹��� ���Ͽ� �����̹����� ����
	      
	        BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Mode.FIT_EXACT, 400, 300, Scalr.OP_ANTIALIAS);
	        // ����� �̹��� ���ϸ� ����
	        String thumbnailName = uploadPath + path + File.separator + "s_" + fileName;
	        // ����� ���� ��ü ����
	        File newFile = new File(thumbnailName);
	        // ���� Ȯ���ڸ� ����
	        String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
	        // ����� ������ ����
	        ImageIO.write(destImg, formatName.toUpperCase(), newFile);
	        // ����� ������ ��� + ���ϸ� ��ȯ
	        return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	    }

	    // 4. ������ ���� : �̹��� ���� X
	    private static String makeIcon(String uploadPath, String savedPath, String fileName) throws Exception {
	        // ������ ���ϸ� = ������ + ��¥��� + ������ + ���ϸ�
	        String iconName = uploadPath + savedPath + File.separator + fileName;
	        return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	    }
}
