//
//  AppDelegate.h
//  SimulatedDownloader
//
//  Created by Evan Cordell on 5/17/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownloaderDelegate.h"
#import "Downloader.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, DownloaderDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
