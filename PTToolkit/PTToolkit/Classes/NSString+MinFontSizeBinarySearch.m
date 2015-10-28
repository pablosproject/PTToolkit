//
// Created by Paolo Tagliani on 21/10/15.
// Copyright (c) 2015 Ideawise Ltd. All rights reserved.
//

#import "NSString+MinFontSizeBinarySearch.h"

@implementation NSString (MinFontSizeBinarySearch)

- (CGFloat)fittingFontSizeForFont:(UIFont *)font minFontSize:(CGFloat)minFontSize maxFontSize:(CGFloat)maxFontSize inSize:(CGSize)size {

    if (maxFontSize < minFontSize) {
        return 0;
    }

    //Find middle value
    NSInteger fontSize = (NSInteger) ((minFontSize + maxFontSize) / 2);

    //Create font
    UIFont *tempFont = [UIFont fontWithName:font.fontName size:fontSize];

    //Calculate dimentions
    CGSize dimension = [self sizeWithAttributes:@{NSFontAttributeName : tempFont}];

    if (dimension.height >= (size.height + 10) && dimension.width >= (size.width + 10) && dimension.height <= size.height && dimension.width <= size.width){
        return fontSize;
    }
    else if (dimension.height > size.height || dimension.width > size.width) {
        return [self fittingFontSizeForFont:font minFontSize:minFontSize maxFontSize:fontSize - 1 inSize:size];
    }
    else {
        return [self fittingFontSizeForFont:font minFontSize:fontSize + 1 maxFontSize:maxFontSize inSize:size];
    }

}

@end