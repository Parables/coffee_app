package com.example.coffee_app

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    // set the System Navigation to transparent
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            window.setDecorFitsSystemWindows(false)
        }
    }
}
