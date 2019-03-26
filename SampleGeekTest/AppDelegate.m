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
    
    /*
     1. fab sequence
     2. trainling zero count of factorial
     3. prime numbers till n limit
     4. searching string in string
    */
    
    //1.
//    [self makeFabSeqToTenNum];
    
     //2.
//    [self getFactAndCountTrailingZeros];

     //4.
//    [self searchPatternInStr];
}

-(void)searchPatternInStr{
    NSString *str1 = @"ABAADADADFE";
    NSString *str2 = @"AB";
    
    const char *cStr1 = [str1 UTF8String];
    const char *cStr2 = [str2 UTF8String];
    int match = 0;
    for (int i = 0; i < strlen(cStr1); i++) {
        int mnPtr = i;
        //        NSLog(@"%c", cStr1[i]);
        for (int j = 0; j < strlen(cStr2); j++) {
            //            NSLog(@"%c", cStr2[j]);
            if(cStr1[mnPtr] == cStr2[j]){
                //                NSLog(@"char match");
                mnPtr += 1;
                match = 1;
                continue;
            }
            else{
                //                NSLog(@"char not match");
                match = 0;
                break;
            }
        }
        if(match == 1){
            NSLog(@"str present in pattern");
            break;
        }
    }
    if(match == 0)
        NSLog(@"str not present in pattern");
}

-(void)getFactAndCountTrailingZeros{
    
    /*
      self created logic
    */
    
    int n = 5;
    int result = 0;
    for(int i = n; i>=1; i--){
        if(i == n)
            result = i;
        else
            result = result * i;
    }
    NSLog(@"%d", result);
    int count = 0;
    int remain = 1;
    int devdent = result;
    int quotient;
    do {
        remain = devdent%10;
        if(remain==0){
            count += 1;
            quotient = devdent/10;
            devdent = quotient;
            continue;
        }
        else
            break;
    } while (quotient >= 10);
    
    NSLog(@"trailing zeros in factorial of n: %d is %d", n, count);
    
    /*
      in order get rid of overflow problem use it.
    */
    
    int e = 100;
    int fcount = 0;
    for (int i = 5; e / i >= 1; i *= 5){
        fcount += e / i;
    }
    NSLog(@"trailing zeros in factorial of n: %d is %d", e, fcount);
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
        
        NSLog(@"fibnaccy sequence: %d", sum);
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
