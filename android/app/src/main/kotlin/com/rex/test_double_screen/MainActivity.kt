package com.rex.test_double_screen
import android.os.Bundle
import com.rex.flutter_subscreen_plugin.FlutterSubScreenProvider
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //副屏初始化
        FlutterSubScreenProvider.initSubScreen(context, flutterEngine)
    }
}
