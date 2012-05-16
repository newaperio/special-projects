//
//  Downloader.h
//  SimulatedDownloader
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DownloaderDelegate.h"

@interface Downloader : NSObject {
    id<DownloaderDelegate> _delegate;
}

@property (assign) id<DownloaderDelegate> delegate;

-(void)download;

@end
