package com.today.player.ui.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ProgressBar
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso
import com.today.player.R
import com.today.player.bean.AppBean
import com.today.player.picasso.RoundTransformation
import com.today.player.util.MD5
import me.jessyan.autosize.utils.AutoSizeUtils

class RecommendListAdapter(
    private var context: Context,
    private var list: List<AppBean>
) : RecyclerView.Adapter<RecommendListAdapter.MyViewHolder>() {

    private var listener: onRecommendItemClick? = null
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
        var rootView = LayoutInflater.from(context).inflate(R.layout.item_recommend, parent, false)
        return MyViewHolder(rootView)
    }

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        val iconUrl = list[position].icon
        val title = list[position].title
        Picasso.get()
            .load(iconUrl)
            .transform(
                RoundTransformation(MD5.string2MD5(iconUrl + "position=" + position))
                    .centerCorp(true)
//                    .override(AutoSizeUtils.pt2px(context,50.0f),AutoSizeUtils.pt2px(context,50.0f))
                    .roundRadius(
                        AutoSizeUtils.pt2px(context, 15.0f),
                        RoundTransformation.RoundType.ALL
                    )
            )
            .placeholder(R.drawable.error_loading)
            .error(R.drawable.error_loading)
            .into(holder.icon)
        holder.title.text = title
        holder.install.text = "安装"
        holder.root.setOnClickListener {
            listener?.onItemClick(holder.install, holder.progress, position)
        }
    }

    interface onRecommendItemClick {
        fun onItemClick(text: TextView, progressBar: ProgressBar, position: Int)
    }

    override fun getItemCount(): Int {
        return list.size
    }

    fun setRecommendItemClickListener(listener: onRecommendItemClick) {
        this.listener = listener
    }

    class MyViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val icon = view.findViewById<ImageView>(R.id.img_app_icon)
        val title = view.findViewById<TextView>(R.id.tv_app_title)
        val install = view.findViewById<TextView>(R.id.tv_install)
        val progress = view.findViewById<ProgressBar>(R.id.progress_download)
        val root = view.findViewById<LinearLayout>(R.id.ll_item_recommend)

    }
}