package com.upa.im;

public interface ActivationHttpListener {
    void active(int code);
    void error(String message);
}
