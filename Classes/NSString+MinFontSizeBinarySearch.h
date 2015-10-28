//
// Created by Paolo Tagliani on 21/10/15.
// Copyright (c) 2015 Ideawise Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MinFontSizeBinarySearch)

- (CGFloat)fittingFontSizeForFont:(UIFont *)font minFontSize:(CGFloat)minFontSize maxFontSize:(CGFloat)maxFontSize inSize:(CGSize)size;

@end