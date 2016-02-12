//
//  NSString+PhoneValidator.m
//  elabogado.com
//
//  Created by Paolo Tagliani on 12/02/16.
//  Copyright © 2016 elabogado.com. All rights reserved.
//

#import "NSString+PhoneValidator.h"

@implementation NSString (PhoneValidator)

- (BOOL)isPhoneNumber {
    NSDataDetector *matchdetector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber
                                                                    error:nil];
    NSUInteger matchNumber = [matchdetector numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];
    return matchNumber > 0;
}

@end
