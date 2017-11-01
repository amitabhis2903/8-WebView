//
//  ViewController.swift
//  WebView
//
//  Created by MacBook Pro on 16.10.16.
//  Copyright © 2016 MacBook Pro. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIWebViewDelegate {
    
    // ui obj
    var webView : UIWebView!
    
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WebView Programmatically
        webView = UIWebView()
        webView.frame = CGRect(x: 0, y: 20, width: self.view.bounds.width, height: self.view.bounds.height - 20)
        webView.scalesPageToFit = false
        webView.dataDetectorTypes = [.phoneNumber, .link]
        
        webView.allowsInlineMediaPlayback = true
        webView.mediaPlaybackRequiresUserAction = true
        webView.mediaPlaybackAllowsAirPlay = true
        webView.suppressesIncrementalRendering = true
        webView.allowsPictureInPictureMediaPlayback = true
        webView.allowsLinkPreview = true
        
        webView.paginationMode = UIWebPaginationMode.leftToRight
        webView.paginationBreakingMode = UIWebPaginationBreakingMode.column
        //webView.pageLength = 50
        //webView.gapBetweenPages = 200
        //let numberOfPages = webView.pageLength
        //print(numberOfPages)
        
        webView.delegate = self
        
        self.view.addSubview(webView)
        
        
        /*
        // Loading Web Page
        let url = URL(string: "http://www.google.com")!
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        */
        
        /*
        // Loading HTML
        let html : String = "<!DOCTYPE html><html><body><img src=\"w3schools.jpg\" alt=\"W3Schools.com\" width=\"104\" height=\"142\"></body></html>"
        webView.loadHTMLString(html, baseURL: nil)
        */
        
        /*
        // Loading File
        let path = Bundle.main.url(forResource: "textFile", withExtension: "txt")! // getting path to file
        do {
            let data = try Data(contentsOf: path) // loading file into *data constant
            
            let baseURL = path.deletingLastPathComponent()
        
            webView.load(data, mimeType: "text/txt", textEncodingName: "UTF-8", baseURL: baseURL) // loading file
        
        } catch {
            print("error while accessing the file")
        }
        */
        
        /*
        // Loading PDF. Way 1
        let path = Bundle.main.path(forResource: "pdfFile", ofType: "pdf")!
        let targetURL = URL(fileURLWithPath: path)
        let request = URLRequest(url: targetURL)
        webView.loadRequest(request)
        */
        
        /*
        // Loading PDF. Way 2
        let path = Bundle.main.url(forResource: "pdfFile", withExtension: "pdf")! // getting path to file
        do {
            let data = try Data(contentsOf: path) // loading file into *data constant
            
            let baseURL = path.deletingLastPathComponent()
            
            webView.load(data, mimeType: "application/pdf", textEncodingName: "UTF-8", baseURL: baseURL) // loading file
            
        } catch {
            print("error while accessing the file")
        }
        */
        
        // Loading HTML File
        let path = Bundle.main.url(forResource: "htmlFile", withExtension: "html")!
        do {
            let data = try Data(contentsOf: path) // loading file into *data constant
            
            let baseURL = path.deletingLastPathComponent()
            
            webView.load(data, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL) // loading file
            
        } catch {
            print("error while accessing the file")
        }
        
    }
    
    
    // firstly exec func when request is about to be loaded
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        // some code
        print("About to start loading")
        return true
    }
    
    
    // exec when webView is started to load some page
    func webViewDidStartLoad(_ webView: UIWebView) {
        // some code
        print("Loading")
    }
    
    
    // exec when webView did finish loading of website
    func webViewDidFinishLoad(_ webView: UIWebView) {
        // some code
        print("Loaded")
    }
    
    
    // exec when failed to load some website
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error.localizedDescription)
    }


}

