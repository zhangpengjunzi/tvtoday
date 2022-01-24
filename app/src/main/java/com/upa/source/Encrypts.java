package com.upa.source;

public class Encrypts {
    private static final byte[] ENCRYPT_TAG={101, 110, 99, 114, 121, 112, 116, 116, 97, 103};

//	public EncryptManager

    private static byte[] convert(byte[] data,byte[] key) {
        if (key==null) {
            return data;
        }
        if (data==null) {
            return null;
        }
        for (int i = 0; i < data.length; i++) {
            int keyidx = i % (key.length);
            data[i] = (byte) (data[i] ^ key[keyidx]);
        }
        return data;
    }

    private static boolean isEncryptData(byte[] data){
        if (data==null || data.length<ENCRYPT_TAG.length) {
            return false;
        }
        for (int i = 0; i < ENCRYPT_TAG.length; i++) {
            if (data[i]!=ENCRYPT_TAG[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] decrypt(byte[] data){
        if (isEncryptData(data)) {
            int idx=ENCRYPT_TAG.length;
            int keylen=data[idx];
            byte[] key=new byte[keylen];
            System.arraycopy(data, idx+1, key, 0, keylen);
            int datalen=data.length-idx-1-keylen;
            byte[] rdata=new byte[datalen];
            System.arraycopy(data, idx+1+keylen, rdata, 0, datalen);
            return convert(rdata, key);
        }else{
            return data;
        }
    }

}

