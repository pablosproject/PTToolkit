//
// Created by Paolo Tagliani on 21/10/15.
// Copyright (c) Paolo Tagliani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (MinFontSizeBinarySearch)

/*
 * Get the minimum font size to fit the current string in the CGSize passed as parameter.
 * This method uses a binary search algorithm, faster compared to a standard plain search algorithm.
 *
 * @param font The font used to find the minimum size
 * @param minFontSize The minimum acceptable font size
 * @param maxFontSize The maximum font size used for the search
 * @param size The size used to calculate the font dimension
 *
 * @return A CGFloat indicating the minimum font size to fit the current label in the size passed as parameter.
*/
- (CGFloat)fittingFontSizeForFont:(UIFont *)font minFontSize:(CGFloat)minFontSize maxFontSize:(CGFloat)maxFontSize inSize:(CGSize)size;

@end