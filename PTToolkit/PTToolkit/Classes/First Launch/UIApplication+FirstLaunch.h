//
//  UIApplication+FirstLaunch.h
//  JibberJabber
//
//  Created by Paolo Tagliani on 29/10/15.
//  Copyright © 2015 Paolo Tagliani. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Utility category that write and read from NSUserDefault if is the first time application is launching
 */

@interface UIApplication (FirstLaunch)

/**
 *  Get information from NSUserDefault and return if is the first time launching the application
 *
 *  @return A boolean indicating if it's the first time launching the application
 */
- (BOOL)isFirstLaunch;

/**
 *  If called automatically update if it's the first launch or not.
 *  To make the whole system work must e called at each application launch
 */
- (void)autoUpdateFirstLaunch;

@end
