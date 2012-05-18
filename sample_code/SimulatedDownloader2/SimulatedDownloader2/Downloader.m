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
    
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(didFinishDownloading) userInfo:nil repeats:NO];
}

- (void) didFinishDownloading {
    if (_delegate && [_delegate respondsToSelector:@selector(didFinishDownloading)]) {
        [_delegate didFinishDownloading];
    }
}

@end
