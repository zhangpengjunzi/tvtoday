package com.upa.source;

public interface ISourceListener {
    void getSourceSuccess(byte[] data);
    void fail();
}
