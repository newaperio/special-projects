//
//  DownloaderDelegate.h
//  SimulatedDownloader2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DownloaderDelegate <NSObject>

@required
-(void)willStartDownloading;
-(void)didFinishDownloading;

@end
