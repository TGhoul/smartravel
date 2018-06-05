package com.yanjin.smartravel.controller;

import com.yanjin.smartravel.response.RestResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @author zpj
 * @date 2018/6/2
 */

@RestController
@RequestMapping("/smartravel/upload")
public class UploadController {

    @Value("${img.location}")
    private String location;

    @RequestMapping("/img")
    public RestResponse uploadImg(@RequestParam("imgfile")MultipartFile file) {
        RestResponse restResponse = new RestResponse();
        if (file.isEmpty() || StringUtils.isEmpty(file.getOriginalFilename())) {
            restResponse.setIsSuccess(0);
            restResponse.setErrmsg("上传失败文件为空");
            return restResponse;
        }

        try {
            location = this.getClass().getResource("/").getPath() + "static/upload/";
            String url = saveImg(file, location);
            Map<String, Object> map = new HashMap<>(1);
            restResponse.setIsSuccess(1);
            restResponse.setData(map);
            map.put("imgurl",url);
            return restResponse;
        } catch (IOException e) {
            e.printStackTrace();
            restResponse.setIsSuccess(0);
        }

        return restResponse;
    }

    /**
     * 保存文件，直接以multipartFile形式
     * @param multipartFile
     * @param path 文件保存绝对路径
     * @return 返回文件名
     * @throws IOException
     */
    private static String saveImg(MultipartFile multipartFile,String path) throws IOException {
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
        FileInputStream fileInputStream = (FileInputStream) multipartFile.getInputStream();
        String fileName =  UUID.randomUUID().toString().replace("-", "")  + suffix;
        BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(path + fileName));
        byte[] bs = new byte[1024];
        int len;
        while ((len = fileInputStream.read(bs)) != -1) {
            bos.write(bs, 0, len);
        }
        bos.flush();
        bos.close();
        return "/static/upload/" + fileName;
    }
}
