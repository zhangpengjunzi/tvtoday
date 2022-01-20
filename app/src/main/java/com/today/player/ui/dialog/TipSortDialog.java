package com.today.player.ui.dialog;

import android.app.Dialog;
import android.view.View;

import com.kingja.loadsir.core.LoadService;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.today.player.bean.MovieSort;
import com.today.player.bean.PlayerModel;
import com.today.player.ui.adapter.TipSortAdapter;
import com.today.player.viewmodel.SourceViewModel;

import java.util.ArrayList;
import java.util.List;

public class TipSortDialog {
    public View a;
    public Dialog b;
    public PlayerModel.SourcesDTO c;
    public TipSortAdapter d;
    public TvRecyclerView e;
    public SourceViewModel f;
    public LoadService g;
    public List<MovieSort.SortData> h = new ArrayList();
    public MovieSort.SortData i = null;

}
