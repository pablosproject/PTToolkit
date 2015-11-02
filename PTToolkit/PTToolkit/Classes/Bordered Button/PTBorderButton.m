//
//  PTBorderButton.m
//  JibberJabber
//
//  Created by Paolo Tagliani on 27/10/15.
//  Copyright © 2015 Paolo Tagliani. All rights reserved.
//

#import "PTBorderButton.h"

@implementation PTBorderButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self rb_setup];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];

    [self rb_setup];
}

- (void)prepareForInterfaceBuilder {
    [self rb_setup];
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    [self rb_setup];
}

#pragma mark - Private methods

- (void)rb_setup {
    [self setTitleColor:_selectedTextColor forState:UIControlStateSelected];

    if (self.selected) {
        self.layer.borderColor = _showBorderWhenSelected ? [_borderColor CGColor] : nil;
        self.layer.backgroundColor = [_selectedBackgroundColor CGColor];
    } else {
        self.layer.borderColor = [_borderColor CGColor];
        [self.layer setBackgroundColor:[_backgroundColor CGColor]];
    }

    self.layer.cornerRadius = _cornerRadius;
    self.layer.borderWidth = _borderWidth;
}

#pragma mark - Content size

//Override intrinsicContentSize method to make the autolayout system taking into account the inset
- (CGSize)intrinsicContentSize {

    CGSize s = [super intrinsicContentSize];

    return CGSizeMake(s.width + self.titleEdgeInsets.left + self.titleEdgeInsets.right + self.imageEdgeInsets.right + self.imageEdgeInsets.left,
            s.height + self.titleEdgeInsets.top + self.titleEdgeInsets.bottom + self.imageEdgeInsets.bottom + self.imageEdgeInsets.left);

}

@end
