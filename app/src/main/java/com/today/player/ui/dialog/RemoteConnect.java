package com.today.player.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.wifi.WifiManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.today.player.R;
import com.today.player.server.RemoteServer;
import com.tv.QRCodeGen;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

public class RemoteConnect {
    public View a;
    public Dialog b;
    public Context c;
    public ImageView d;
    public TextView e;
    private Bitmap bitmap;

    public RemoteConnect a(Context context) {
        View view = null;
        this.a = LayoutInflater.from(context).inflate(R.layout.remote_dialog, (ViewGroup) null);
        Dialog dialog = new Dialog(context, R.style.CustomDialogStyle);
        this.b = dialog;
        dialog.setCanceledOnTouchOutside(false);
        this.b.setContentView(this.a);
        this.b.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                if (bitmap != null) {
                    bitmap.recycle();
                    bitmap = null;
                }
            }
        });
        this.c = context;
        View view2 = this.a;
        this.d = (ImageView) (view2 != null ? view2.findViewById(R.id.ivQRCode) : null);
        View view3 = this.a;
        if (view3 != null) {
            view = view3.findViewById(R.id.tvAddress);
        }
        this.e = (TextView) view;
        String address = RemoteServer.getServerAddress(this.c);
        this.d.setImageBitmap(QRCodeGen.generateBitmap(address, 200, 200));
        this.e.setText(String.format("手机/电脑扫描下面二维码或者直接浏览器访问地址\n%s", new Object[]{address}));
        return this;
    }

    public void a() {
        Dialog dialog = this.b;
        if (dialog != null && !dialog.isShowing()) {
            this.b.show();
        }
    }

}
