//
//  Downloader.h
//  SimulatedDownloader2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DownloaderDelegate.h"

@interface Downloader : NSObject <NSURLConnectionDelegate>

@property (nonatomic, assign) id<DownloaderDelegate> delegate;

-(void)download;

@end
