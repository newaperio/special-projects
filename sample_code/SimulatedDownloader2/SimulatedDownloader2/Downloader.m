//
//  Downloader.m
//  SimulatedDownloader2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "Downloader.h"

@interface Downloader (Private) 
-(void)didFinishDownloading;
@end

@implementation Downloader
@synthesize delegate = _delegate;

-(void)download {
    if (_delegate) {
        if ([_delegate respondsToSelector:@selector(willStartDownloading)]) 
        {
            [_delegate willStartDownloading];
        } 
    }
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://google.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    [connection release];
    [request release];
    [url release];
}

- (void) didFinishDownloading {
    if (_delegate && [_delegate respondsToSelector:@selector(didFinishDownloading)]) {
        [_delegate didFinishDownloading];
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [self didFinishDownloading]; 
}

@end
