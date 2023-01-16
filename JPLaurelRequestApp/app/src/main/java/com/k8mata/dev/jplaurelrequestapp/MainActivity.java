package com.k8mata.dev.jplaurelrequestapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        WebView webView = (WebView) findViewById(R.id.webview);
        //WebSettings webSettings = webView.getSettings();
        //webSettings.setJavaScriptEnabled(true);

        //webView.loadUrl("http://192.168.0.12/JPRequsting/Pages/");
        webView.loadUrl("http://google.com/");
    }
}