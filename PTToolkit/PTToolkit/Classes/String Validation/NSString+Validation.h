//
//  NSString+Validation.h
//  PTToolkit
//
//  Created by Paolo Tagliani on 24/03/16.
//  Copyright © 2016 Paolo Tagliani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

- (BOOL)isPhoneNumber;

- (BOOL)isOnlyText;

- (BOOL)containsSpecialCharacters;

@end
