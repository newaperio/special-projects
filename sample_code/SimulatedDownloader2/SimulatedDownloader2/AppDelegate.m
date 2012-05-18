//
//  AppDelegate.m
//  SimulatedDownloader2
//
//  Created by Evan Cordell on 5/18/12.
//  Copyright (c) 2012 NewAperio. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    Downloader *fakeDownloader = [[Downloader alloc] init];
    fakeDownloader.delegate = self;
    [fakeDownloader download];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)willStartDownloading {
    NSLog(@"Download started.");
}

-(void)didFinishDownloading{
    NSLog(@"Download finished.");
}


@end
