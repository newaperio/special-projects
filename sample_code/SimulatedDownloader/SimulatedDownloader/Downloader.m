//
//  Downloader.m
//  SimulatedDownloader
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "Downloader.h"

@interface Downloader (Private)
-(void)downloadDidFinish;
@end

@implementation Downloader
@synthesize delegate = _delegate;

-(void)download {
    if (_delegate && [_delegate respondsToSelector:@selector(downloaderWillStartDownloading)]) {
        [_delegate downloaderWillStartDownloading];
    }
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(downloadDidFinish) userInfo:nil repeats:NO];
}

-(void)downloadDidFinish {
    if(_delegate && [_delegate respondsToSelector:@selector(downloaderDidFinishDownloading)]) {
        [_delegate downloaderDidFinishDownloading];
    }
}

@end
