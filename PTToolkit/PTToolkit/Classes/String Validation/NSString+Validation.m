//
//  NSString+Validation.m
//  PTToolkit
//
//  Created by Paolo Tagliani on 24/03/16.
//  Copyright © 2016 Paolo Tagliani. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)

- (BOOL)isPhoneNumber {
    NSDataDetector *matchdetector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypePhoneNumber
                                                                    error:nil];
    NSUInteger matchNumber = [matchdetector numberOfMatchesInString:self options:0 range:NSMakeRange(0, [self length])];
    return matchNumber > 0;
}

- (BOOL)isOnlyText {
    NSCharacterSet *notLetters = [[NSCharacterSet letterCharacterSet] invertedSet];
    return [self rangeOfCharacterFromSet:notLetters].location == NSNotFound;
}

- (BOOL)containsSpecialCharacters {
    NSCharacterSet * set = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ0123456789"] invertedSet];
    
    return [self rangeOfCharacterFromSet:set].location != NSNotFound;
}

@end
