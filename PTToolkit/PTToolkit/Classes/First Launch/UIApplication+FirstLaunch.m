//
//  UIApplication+FirstLaunch.m
//  JibberJabber
//
//  Created by Paolo Tagliani on 29/10/15.
//  Copyright © 2015 Jibber Jabber. All rights reserved.
//

#import "UIApplication+FirstLaunch.h"

static NSString *const kFirstLaunchDefaultKey = @"firstLaunch";

@implementation UIApplication (FirstLaunch)

- (BOOL)isFirstLaunch {
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    NSNumber *launch = [defaults objectForKey:kFirstLaunchDefaultKey];
    return launch ? [launch boolValue] : YES;
}

- (void)autoUpdateFirstLaunch {
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    NSNumber *launch = [defaults objectForKey:kFirstLaunchDefaultKey];
    
    if (!launch) { //It's the really first launch, so update it to true
        [defaults setObject:@(1) forKey:kFirstLaunchDefaultKey];
    }
    else {
        if ([launch boolValue]) { // after the first launch it is set to true
            [defaults setObject:@(0) forKey:kFirstLaunchDefaultKey];
        }
    }
    
    [defaults synchronize];
}

@end
