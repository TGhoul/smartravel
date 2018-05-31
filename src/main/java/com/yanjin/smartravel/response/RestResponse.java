package com.yanjin.smartravel.response;

import lombok.Data;

import java.io.Serializable;

/**
 * @author zpj
 * @date 2018/5/20
 */
@Data
public class RestResponse<T> implements Serializable {

    /** 请求是否成功 */
    private int isSuccess;

    /** 错误码 */
    private String errcode;

    /** 错误信息 */
    private String errmsg;

    private T data;


}
