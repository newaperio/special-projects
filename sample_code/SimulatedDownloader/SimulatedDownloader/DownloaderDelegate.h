//
//  DownloaderDelegate.h
//  SimulatedDownloader
//
//  Created by Evan Cordell on 5/16/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DownloaderDelegate <NSObject>

@optional
-(void)downloaderWillStartDownloading;

@required
-(void)downloaderDidFinishDownloading;

@end
