package com.today.player.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.today.player.ui.activity.PraseActivity;
import com.today.player.ui.activity.ProjectionPlayActivity;
import com.today.player.util.AppManager;

/**
 * @author pj567
 * @date :2021/3/5
 * @description:
 */
public class ProjectionReceiver extends BroadcastReceiver {
    public static String action = "android.content.movie.projection.Action";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (action.equals(intent.getAction()) && intent.getExtras() != null) {
            if (AppManager.getInstance().getActivity(ProjectionPlayActivity.class) != null) {
                AppManager.getInstance().backActivity(ProjectionPlayActivity.class);
                AppManager.getInstance().finishActivity(ProjectionPlayActivity.class);
            }
            AppManager.getInstance().finishActivity(ProjectionPlayActivity.class);
            Intent newIntent = new Intent(context, ProjectionPlayActivity.class);
            newIntent.putExtra("html", intent.getExtras().getString("html"));
            newIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            context.startActivity(newIntent);
        }
    }
}