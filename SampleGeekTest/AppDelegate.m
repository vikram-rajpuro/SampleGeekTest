//
//  AppDelegate.m
//  SampleGeekTest
//
//  Created by AMRA on 26/03/19.
//  Copyright © 2019 innovanathinklabs. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self makeFabSeqToTenNum];
    
}

-(void)makeFabSeqToTenNum{
    int prev = 0;
    int sPrev = 0;
    int sum = 0;
    for (int a = 1; a<=10; a++) {
        if(a == 1){
            prev = 0;
            sPrev = 0;
        }
        else if(a == 2){
            prev = 0;
            sPrev = 1;
        }
        sum = prev + sPrev;
        sPrev = prev;
        prev = sum;
        
        NSLog(@"%d", sum);
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
