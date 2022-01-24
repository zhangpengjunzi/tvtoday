package com.upa.im;

import com.upa.UpdateModel;

public interface YsRequestListener {
    /**
     * 接口请求成功
     */
    void success(UpdateModel model);

    /**
     * 请求失败
     */
    void error(String message);

    /**
     * 不需要更新
     */
    void keep();
}
